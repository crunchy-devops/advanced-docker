app = proc do |env|
[200, {}, %w(hello world other )]
end
run app