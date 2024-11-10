package com.poly.controller.requestAnalyst.sessionAttributes;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.AdminUserAttributes;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.AdminVideoAttributes;
import jakarta.servlet.http.HttpServletRequest;

public class AttributeContainer {
    private final SessionContainer sessionContainer;
    private AdminUserAttributes adminUserAttributes;
    private AdminVideoAttributes adminVideoAttributes;

    public AttributeContainer(SessionContainer sessionContainer) {
        this.sessionContainer = sessionContainer;
        adminUserAttributes = new AdminUserAttributes(this);
        adminVideoAttributes  = new AdminVideoAttributes(this);
    }

    public AdminUserAttributes getAdminUserAttributes() {
        return adminUserAttributes;
    }

    public void setAdminUserAttributes(AdminUserAttributes adminUserAttributes) {
        this.adminUserAttributes = adminUserAttributes;
    }

    public AdminVideoAttributes getAdminVideoAttributes() {
        return adminVideoAttributes;
    }

    public void setAdminVideoAttributes(AdminVideoAttributes adminVideoAttributes) {
        this.adminVideoAttributes = adminVideoAttributes;
    }

    public void deploy(HttpServletRequest request) {
        sessionContainer.setAttributeContainer(this);
        sessionContainer.deploy(request);
    }
}
