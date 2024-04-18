require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with a price, stock, image, description, and barcode" do
    product = Product.new(
      price: 1.5,
      stock: 10,
      description: 'This is a great product.',
      barcode: '1234567890'
    )

    allow(product.image).to receive(:attach)

    product.image.attach('path/to/image.jpg')

    expect(product).to be_valid
  end

  it "is invalid without a price" do
    product = Product.new(price: nil)
    product.valid?
    expect(product.errors[:price]).to include("can't be blank")
  end
end
