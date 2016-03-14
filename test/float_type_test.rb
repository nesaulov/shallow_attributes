require 'test_helper'

describe ShallowAttributes::Types::Float do
  let(:type) { ShallowAttributes::Types::Float.new }

  describe '#coerce' do
    describe 'when value is String' do
      it 'returns float' do
        type.coerce('1').must_equal 1.0
        type.coerce('1.1').must_equal 1.1
      end
    end

    describe 'when value is Numeric' do
      it 'returns float' do
        type.coerce(1).must_equal 1.0
        type.coerce(1.1).must_equal 1.1
      end
    end

    describe 'when value is Nil' do
      it 'returns float' do
        type.coerce(nil).must_equal 0.0
      end
    end

    describe 'when value is TrueClass' do
      it 'returns float' do
        type.coerce(true).must_equal 1.0
      end
    end

    describe 'when value is FalseClass' do
      it 'returns float' do
        type.coerce(false).must_equal 0.0
      end
    end
  end
end