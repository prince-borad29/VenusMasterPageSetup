<%@ Page Title="" Language="C#" MasterPageFile="~/venusMasterSetup.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="venusMasterPageSetup.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- <div class="profile-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-4">
                    <div class="profile-card bg-white">
                        <div class="profile-header text-center">
                            <img src="images/user-placeholder.jpg" alt="Profile Picture" class="profile-avatar">
                            <h4 class="mb-0">John Doe</h4>
                            <p class="text-light mb-0">Member since 2024</p>
                        </div>
                        <div class="p-4">
                            <div class="nav flex-column nav-pills" role="tablist">
                                <button class="nav-link active mb-2" data-bs-toggle="pill" data-bs-target="#profile-info">Profile Information</button>
                                <button class="nav-link mb-2" data-bs-toggle="pill" data-bs-target="#order-history">Order History</button>
                                <button class="nav-link mb-2" data-bs-toggle="pill" data-bs-target="#wishlist">Wishlist</button>
                                <button class="nav-link mb-2" data-bs-toggle="pill" data-bs-target="#addresses">Addresses</button>
                                <button class="nav-link" data-bs-toggle="pill" data-bs-target="#settings">Settings</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-8">
                    <div class="profile-card bg-white p-4">
                        <div class="tab-content">
                            <!-- Profile Information Tab -->
                            <div class="tab-pane fade show active" id="profile-info">
                                <h4 class="mb-4">Profile Information</h4>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label">First Name</label>
                                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Last Name</label>
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Email</label>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Phone</label>
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="col-12">
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" CssClass="btn btn-primary" />
                                    </div>
                                </div>
                            </div>

                            <!-- Order History Tab -->
                            <div class="tab-pane fade" id="order-history">
                                <h4 class="mb-4">Order History</h4>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Order ID</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                                <th>Total</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>#12345</td>
                                                <td>Jan 8, 2024</td>
                                                <td><span class="badge bg-success">Delivered</span></td>
                                                <td>$299.00</td>
                                                <td><button class="btn btn-sm btn-outline-primary">View</button></td>
                                            </tr>
                                            <tr>
                                                <td>#12344</td>
                                                <td>Jan 5, 2024</td>
                                                <td><span class="badge bg-warning">In Transit</span></td>
                                                <td>$199.00</td>
                                                <td><button class="btn btn-sm btn-outline-primary">View</button></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- Wishlist Tab -->
                            <div class="tab-pane fade" id="wishlist">
                                <h4 class="mb-4">My Wishlist</h4>
                                <div class="row g-4">
                                    <div class="col-md-6">
                                        <div class="card">
                                            <img src="images/product-1.png" class="card-img-top" alt="Product">
                                            <div class="card-body">
                                                <h5 class="card-title">Nordic Chair</h5>
                                                <p class="card-text">$199.00</p>
                                                <button class="btn btn-primary">Add to Cart</button>
                                                <button class="btn btn-outline-danger">Remove</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card">
                                            <img src="images/product-2.png" class="card-img-top" alt="Product">
                                            <div class="card-body">
                                                <h5 class="card-title">Kruzo Aero Chair</h5>
                                                <p class="card-text">$299.00</p>
                                                <button class="btn btn-primary">Add to Cart</button>
                                                <button class="btn btn-outline-danger">Remove</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Addresses Tab -->
                            <div class="tab-pane fade" id="addresses">
                                <h4 class="mb-4">My Addresses</h4>
                                <div class="row g-4">
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h6 class="card-subtitle mb-2 text-muted">Home Address</h6>
                                                <p class="card-text">
                                                    123 Main Street<br>
                                                    Apartment 4B<br>
                                                    New York, NY 10001<br>
                                                    United States
                                                </p>
                                                <button class="btn btn-sm btn-outline-primary">Edit</button>
                                                <button class="btn btn-sm btn-outline-danger">Delete</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-body">
                                                <h6 class="card-subtitle mb-2 text-muted">Office Address</h6>
                                                <p class="card-text">
                                                    456 Business Ave<br>
                                                    Suite 200<br>
                                                    New York, NY 10002<br>
                                                    United States
                                                </p>
                                                <button class="btn btn-sm btn-outline-primary">Edit</button>
                                                <button class="btn btn-sm btn-outline-danger">Delete</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary">Add New Address</button>
                                    </div>
                                </div>
                            </div>

                            <!-- Settings Tab -->
                            <div class="tab-pane fade" id="settings">
                                <h4 class="mb-4">Account Settings</h4>
                                <div class="mb-4">
                                    <h6>Change Password</h6>
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label class="form-label">Current Password</label>
                                            <asp:TextBox ID="txtCurrentPassword" runat="server" CssClass="form-control" TextMode="Password" />
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">New Password</label>
                                            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" />
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">Confirm New Password</label>
                                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" />
                                        </div>
                                        <div class="col-12">
                                            <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btn btn-primary" />
                                        </div>
                                    </div>
                                </div>
                                <div class="mb-4">
                                    <h6>Notification Settings</h6>
                                    <div class="form-check mb-2">
                                        <input class="form-check-input" type="checkbox" id="emailNotifications" checked>
                                        <label class="form-check-label" for="emailNotifications">
                                            Email Notifications
                                        </label>
                                    </div>
                                    <div class="form-check mb-2">
                                        <input class="form-check-input" type="checkbox" id="smsNotifications">
                                        <label class="form-check-label" for="smsNotifications">
                                            SMS Notifications
                                        </label>
                                    </div>
                                    <div class="form-check mb-2">
                                        <input class="form-check-input" type="checkbox" id="marketingEmails" checked>
                                        <label class="form-check-label" for="marketingEmails">
                                            Marketing Emails
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>

    <div class="profile-section">
        <div class="container">
            <!-- Profile Header -->
            <div class="profile-card">
                <div class="profile-header">
                    <div class="row align-items-center">
                        <div class="col-md-4 text-center">
                            <img src="images/person_2.jpg" alt="Profile Picture" class="profile-avatar">
                        </div>
                        <div class="col-md-8 text-md-start text-center">
                            <h2 class="mb-3">John Doe</h2>
                            <p class="mb-2"><i class="fas fa-envelope me-2"></i>johndoe@example.com</p>
                            <p class="mb-2"><i class="fas fa-phone me-2"></i>+1 (555) 123-4567</p>
                            <p class="mb-0"><i class="fas fa-calendar me-2"></i>Member since January 2024</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Profile Information Section -->

            <div class="profile-card bg-white p-4">
                <h3 class="section-title">Profile Information</h3>
                <div class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label">First Name</label>
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" Height="50" />
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Last Name</label>
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" Height="50" />
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" Height="50" />
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Phone</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Height="50"/>
                    </div>
                    <div class="col-12">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" CssClass="btn btn-primary" Height="50"/>
                    </div>
                </div>
            </div>

            <!-- Order History Section -->

            <div class="profile-card bg-white p-4">
                <h3 class="section-title">Order History</h3>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Date</th>
                                <th>Items</th>
                                <th>Status</th>
                                <th>Total</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#12345</td>
                                <td>Jan 8, 2024</td>
                                <td>3 items</td>
                                <td><span class="badge bg-success">Delivered</span></td>
                                <td>$299.00</td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary">View Details</button>
                                </td>
                            </tr>
                            <tr>
                                <td>#12344</td>
                                <td>Jan 5, 2024</td>
                                <td>2 items</td>
                                <td><span class="badge bg-warning">In Transit</span></td>
                                <td>$199.00</td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary">View Details</button>
                                </td>
                            </tr>
                            <tr>
                                <td>#12343</td>
                                <td>Jan 1, 2024</td>
                                <td>1 item</td>
                                <td><span class="badge bg-success">Delivered</span></td>
                                <td>$149.00</td>
                                <td>
                                    <button class="btn btn-sm btn-outline-primary">View Details</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Addresses Section -->
            <div class="profile-card bg-white p-4">
                <h3 class="section-title">My Addresses</h3>
                <div class="row g-4">
                    <div class="col-md-6">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-start mb-3">
                                    <h5 class="card-title"><i class="fas fa-home me-2"></i>Home Address</h5>
                                    <span class="badge bg-primary">Default</span>
                                </div>
                                <p class="card-text">
                                    John Doe<br>
                                    123 Main Street<br>
                                    Apartment 4B<br>
                                    New York, NY 10001<br>
                                    United States<br>
                                    Phone: (555) 123-4567
                                </p>
                                <div class="d-flex gap-2">
                                    <button class="btn btn-outline-primary btn-sm">Edit</button>
                                    <button class="btn btn-outline-danger btn-sm">Delete</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-start mb-3">
                                    <h5 class="card-title"><i class="fas fa-building me-2"></i>Office Address</h5>
                                </div>
                                <p class="card-text">
                                    John Doe<br>
                                    456 Business Ave<br>
                                    Suite 200<br>
                                    New York, NY 10002<br>
                                    United States<br>
                                    Phone: (555) 987-6543
                                </p>
                                <div class="d-flex gap-2">
                                    <button class="btn btn-outline-primary btn-sm">Edit</button>
                                    <button class="btn btn-outline-danger btn-sm">Delete</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary"><i class="fas fa-plus me-2"></i>Add New Address</button>
                    </div>
                </div>
            </div>

            <!-- Settings Section Start-->

            <%--<div class="profile-card bg-white p-4">
                <h3 class="section-title">Account Settings</h3>

                <!-- Password Change -->
                <div class="mb-4">
                    <h5 class="mb-3">Change Password</h5>
                    <div class="row g-3">
                        <div class="col-md-4">
                            <label class="form-label">Current Password</label>
                            <asp:TextBox ID="txtCurrentPassword" runat="server" CssClass="form-control" TextMode="Password" Height="50" />
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">New Password</label>
                            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" Height="50" />
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Confirm New Password</label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" Height="50"  />
                        </div>
                        <div class="col-12">
                            <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btn btn-primary" />
                        </div>
                    </div>
                </div>

                <!-- Save Settings Button -->
                <div class="text-end">
                    <button class="btn btn-primary">Save All Settings</button>
                </div>
            </div>--%>

            <!--Setting Section End-->
        </div>
    </div>

    <!-- Delete Account Modal -->
    <div class="modal fade" id="deleteAccountModal" tabindex="-1" aria-labelledby="deleteAccountModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteAccountModalLabel">Confirm Account Deletion</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete your account? This action cannot be undone.</p>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" id="confirmDelete">
                        <label class="form-check-label" for="confirmDelete">
                            I understand that this action is permanent and cannot be reversed
                        </label>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Please type "DELETE" to confirm</label>
                        <input type="text" class="form-control" id="deleteConfirmation">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-danger" disabled>Delete Account</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

