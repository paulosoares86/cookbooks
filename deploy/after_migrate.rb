rails_env = new_resource.environment["RAILS_ENV"]

# Chef::Log.info "Invoking s3yml::configure recipe"
# run_context.send :include_recipe, 's3yml::configure'

Chef::Log.info("Precompiling assets for RAILS_ENV=#{rails_env}...")
execute "rake assets:precompile" do
  cwd release_path
  command "bundle exec rake assets:precompile"
  environment "RAILS_ENV" => rails_env
end
