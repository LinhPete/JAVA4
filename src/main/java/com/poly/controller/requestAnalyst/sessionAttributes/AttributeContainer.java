package com.poly.controller.requestAnalyst.sessionAttributes;

import com.poly.controller.requestAnalyst.SessionContainer;
import com.poly.controller.requestAnalyst.sessionAttributes.attributes.AdminUserAttributes;
import jakarta.servlet.http.HttpServletRequest;

public class AttributeContainer {
    private final SessionContainer sessionContainer;
    private AdminUserAttributes adminUserAttributes;

    public AttributeContainer(SessionContainer sessionContainer) {
        this.sessionContainer = sessionContainer;
        adminUserAttributes = new AdminUserAttributes(this);
    }

    public AdminUserAttributes getAdminUserAttributes() {
        return adminUserAttributes;
    }

    public void setAdminUserAttributes(AdminUserAttributes adminUserAttributes) {
        this.adminUserAttributes = adminUserAttributes;
    }

    public void deploy(HttpServletRequest request) {
        sessionContainer.setAttributeContainer(this);
        sessionContainer.deploy(request);
    }
}
