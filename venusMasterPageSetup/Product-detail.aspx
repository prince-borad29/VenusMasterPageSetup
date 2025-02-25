<%@ Page Title="" Language="C#" MasterPageFile="~/venusMasterSetup.Master" AutoEventWireup="true" CodeBehind="Product-detail.aspx.cs" Inherits="venusMasterPageSetup.Product_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="product-detail-section">
        <div class="container">
            <div class="row">
                <!-- Product Gallery -->
                <div class="col-md-6 product-gallery">
                    <img src="images/product-1.png" class="img-fluid main-image" alt="Nordic Chair">
                    <div class="thumbnail-gallery">
                        <img src="images/product-1.png" alt="Nordic Chair View 1">
                        <img src="images/product-2.png" alt="Nordic Chair View 2">
                        <img src="images/product-3.png" alt="Nordic Chair View 3">
                    </div>
                </div>

                <!-- Product Info -->
                <div class="col-md-6 product-info">
                    <h2>Nordic Chair</h2>
                    <strong class="product-price">$50.00</strong>

                    <p>Experience the perfect blend of style and comfort with our Nordic Chair. Crafted with premium materials and designed with modern aesthetics in mind, this chair is perfect for any contemporary space.</p>

                    <div class="quantity-selector">
                        <button type="button" class="qty-btn" onclick="decreaseQty(event)">&minus; </button>
                        <asp:TextBox ID="QtyTextBox" CssClass="qty-value" Text="1" runat="server" Width="40px" BorderStyle="None" min="1"></asp:TextBox>
                        <button type="button" class="qty-btn" onclick="increaseQty(event)">&plus; </button>
                    </div>

                    <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="btn-add-to-cart" />

                    <div class="product-description">
                        <h4>Product Details</h4>
                        <p>The Nordic Chair features a minimalist design with clean lines and a natural finish. The ergonomic design ensures comfort during extended use, while the sturdy construction guarantees longevity.</p>

                        <table class="specs-table">
                            <tr>
                                <td>Materials</td>
                                <td>Solid Oak Wood, Premium Fabric</td>
                            </tr>
                            <tr>
                                <td>Dimensions</td>
                                <td>W: 60cm x D: 65cm x H: 85cm</td>
                            </tr>
                            <tr>
                                <td>Weight</td>
                                <td>8.5 kg</td>
                            </tr>
                            <tr>
                                <td>Assembly</td>
                                <td>Required (Tools Included)</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function increaseQty(e) {
            e.preventDefault();
            var qtyTextBox = document.getElementById('<%= QtyTextBox.ClientID %>');

            if (qtyTextBox) {
                var currentValue = parseInt(qtyTextBox.value) || 1;
                if (currentValue < 99) { // Optional: Add maximum limit
                    qtyTextBox.value = currentValue + 1;
                    updateTotal(qtyTextBox.value); // Add function to update total if needed
                }
            }
        }

        function decreaseQty(e) {
            e.preventDefault();
            var qtyTextBox = document.getElementById('<%= QtyTextBox.ClientID %>');

            if (qtyTextBox) {
                var currentValue = parseInt(qtyTextBox.value) || 1;
                if (currentValue > 1) { // Prevent quantity from going below 1
                    qtyTextBox.value = currentValue - 1;
                    updateTotal(qtyTextBox.value); // Add function to update total if needed
                }
            }
        }

        // Optional: Add input validation
        document.getElementById('<%= QtyTextBox.ClientID %>').addEventListener('input', function (e) {
            var value = this.value;
            // Only allow numbers
            if (!/^\d*$/.test(value)) {
                this.value = value.replace(/[^\d]/g, '');
            }
            // Ensure value is at least 1
            if (parseInt(this.value) < 1 || this.value === '') {
                this.value = 1;
            }
            // Optional: Add maximum limit
            if (parseInt(this.value) > 99) {
                this.value = 99;
            }
            updateTotal(this.value);
        });

        // Wait for DOM to be fully loaded
        document.addEventListener('DOMContentLoaded', function () {
            // Get main image element
            const mainImage = document.querySelector('.main-image');

            // Get all thumbnail images
            const thumbnails = document.querySelectorAll('.thumbnail-gallery img');

            // Add click event listener to each thumbnail
            thumbnails.forEach(thumbnail => {
                thumbnail.addEventListener('click', function () {
                    // Update main image source with clicked thumbnail's source
                    mainImage.src = this.src;
                    mainImage.alt = this.alt;
                });
            });
        });
    </script>
</asp:Content>
