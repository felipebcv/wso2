package org.example.custom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import javax.sql.DataSource;
import org.wso2.carbon.user.api.RealmConfiguration;
import org.wso2.carbon.user.core.UserRealm;
import org.wso2.carbon.user.core.UserStoreException;
import org.wso2.carbon.user.core.claim.ClaimManager;
import org.wso2.carbon.user.core.jdbc.JDBCUserStoreManager;
import org.wso2.carbon.user.core.profile.ProfileConfigurationManager;

public class CustomUserStoreManager extends JDBCUserStoreManager {

    public CustomUserStoreManager(DataSource dataSource, RealmConfiguration realmConfig, int tenantId, boolean addInitData) throws UserStoreException {
        super(dataSource, realmConfig, tenantId, addInitData);
    }

    public CustomUserStoreManager(RealmConfiguration realmConfig, Map<String, Object> properties, ClaimManager claimManager, ProfileConfigurationManager profileManager, UserRealm realm, Integer tenantId, boolean addInitData) throws UserStoreException {
        super(realmConfig, properties, claimManager, profileManager, realm, tenantId, addInitData);
    }

    @Override
    public boolean doAuthenticate(String userName, Object credential) throws UserStoreException {
        String sql = "SELECT SENHA FROM COLABORADORES WHERE USERNAME=?";
        try (Connection dbConnection = getDBConnection();
             PreparedStatement prepStmt = dbConnection.prepareStatement(sql)) {
            prepStmt.setString(1, userName);
            try (ResultSet rs = prepStmt.executeQuery()) {
                if (rs.next()) {
                    String storedPassword = rs.getString(1);
                    return storedPassword.equals(credential);
                }
            }
        } catch (SQLException e) {
            throw new UserStoreException("Error while authenticating user", e);
        }
        return false;
    }
}
    