<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-custom" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_success) { ?>
        <div class="alert alert-success"><i class="fa fa-check"></i> <?php echo $error_success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-custom" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-username"><?php echo $entry_username; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="sameday_username" value="<?php echo $sameday_username; ?>" placeholder="<?php echo $entry_username; ?>" id="input-username" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
                        <div class="col-sm-10">
                            <input type="password" name="sameday_password" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-tax-class"><?php echo $entry_tax_class; ?></label>
                        <div class="col-sm-10">
                            <select name="sameday_tax_class_id" id="input-tax-class" class="form-control">
                                <option value="0"><?php echo $text_none; ?></option>
                                <?php foreach ($tax_classes as $tax_class) { ?>
                                <option value="<?php echo $tax_class['tax_class_id']; ?>" <?php if ($tax_class['tax_class_id'] == $sameday_tax_class_id) { ?> selected="selected" <?php } ?>><?php echo $tax_class['title']; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-geo-zone"><?php echo $entry_geo_zone; ?></label>
                        <div class="col-sm-10">
                            <select name="sameday_geo_zone_id" id="input-geo-zone" class="form-control">
                                <option value="0"><?php echo $text_all_zones; ?></option>
                                <?php foreach ($geo_zones as $geo_zone) { ?>
                                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" <?php if ($geo_zone['geo_zone_id'] == $sameday_geo_zone_id) { ?> selected="selected" <?php } ?>><?php echo $geo_zone['name']; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-testing"><?php echo $entry_testing; ?></label>
                        <div class="col-sm-10">
                            <select name="sameday_testing" id="input-testing" class="form-control">
                                <option value="0" <?php if (!$sameday_testing) { ?>selected="selected"<?php } ?>><?php echo $text_disabled; ?></option>
                                <option value="1" <?php if ($sameday_testing) { ?>selected="selected"<?php } ?>><?php echo $text_enabled; ?></option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                        <div class="col-sm-10">
                            <select name="sameday_status" id="input-status" class="form-control">
                                <option value="0" <?php if (!$sameday_status) { ?>selected="selected"<?php } ?>><?php echo $text_disabled; ?></option>
                                <option value="1" <?php if ($sameday_status) { ?>selected="selected"<?php } ?>><?php echo $text_enabled; ?></option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_estimated_cost; ?></label>
                        <div class="col-sm-10">
                            <select name="sameday_estimated_cost" id="input-status" class="form-control">
                                <option value="0" <?php if (!$sameday_estimated_cost) { ?>selected="selected"<?php } ?>><?php echo $text_disabled; ?></option>
                                <option value="1" <?php if ($sameday_estimated_cost) { ?>selected="selected"<?php } ?>><?php echo $text_enabled; ?></option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input_open_package"><?php echo $entry_open_package; ?></label>
                        <div class="col-sm-10">
                            <select name="sameday_open_package" id="input_open_package" class="form-control">
                                <option value="0" <?php if (!$sameday_open_package) { ?>selected="selected"<?php } ?>><?php echo $text_disabled; ?></option>
                                <option value="1" <?php if ($sameday_open_package) { ?>selected="selected"<?php } ?>><?php echo $text_enabled; ?></option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input_open_package_label"><?php echo $entry_open_package_label; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="sameday_open_package_label" value="<?php echo $sameday_open_package_label; ?>" placeholder="<?php echo $entry_open_package_label; ?>" id="sameday_open_package_label" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
                        <div class="col-sm-10">
                            <input type="text" name="sameday_sort_order" value="<?php echo $sameday_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_services; ?></h3>
                <a class="btn btn-primary" href="<?php echo $service_refresh; ?>" data-toggle="tooltip" title="<?php echo $text_services_refresh; ?>"><i class="fa fa-refresh"></i></a>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <td class="text-left"><?php echo $column_internal_id; ?></td>
                                <td class="text-left"><?php echo $column_internal_name; ?></td>
                                <td class="text-left"><?php echo $column_name; ?></td>
                                <td class="text-left"><?php echo $column_price; ?></td>
                                <td class="text-left"><?php echo $column_price_free; ?></td>
                                <td class="text-left"><?php echo $column_status; ?></td>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($services)) { ?>
                            <tr>
                                <td class="text-center" colspan="6"> <?php echo $text_services_empty; ?> </td>
                            </tr>
                            <?php } else { foreach ($services as $idx => $service) { ?>
                            <tr>
                                <td><?php echo $service['sameday_id']; ?></td>
                                <td><a href="<?php echo $service_links[$idx]; ?>"><?php echo $service['sameday_name']; ?></a></td>
                                <td><?php echo $service['name']; ?></td>
                                <td><?php echo $service['price']; ?></td>
                                <td><?php echo $service['price_free']; ?></td>
                                <td><?php echo $statuses[$service['status']]['text']; ?></td>
                            </tr>
                            <?php } } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_pickup_points; ?></h3>
                <a class="btn btn-primary" href="<?php echo $pickupPoint_refresh; ?>" data-toggle="tooltip" title="<?php echo $text_services_refresh; ?>"><i class="fa fa-refresh"></i></a>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left"></td>
                            <td class="text-left"><?php echo $column_pickupPoint_samedayId; ?></td>
                            <td class="text-left"><?php echo $column_pickupPoint_alias; ?></td>
                            <td class="text-left"><?php echo $column_pickupPoint_city; ?></td>
                            <td class="text-left"><?php echo $column_pickupPoint_county; ?></td>
                            <td class="text-left"><?php echo $column_pickupPoint_address; ?></td>
                            <td class="text-left"><?php echo $column_pickupPoint_default_address; ?></td>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if (empty($pickupPoints)) { ?>
                        <tr>
                            <td class="text-center" colspan="6"><?php echo $text_pickup_points_empty; ?></td>
                        </tr>
                        <?php } else { $i=1;foreach ($pickupPoints as $pickupPoint) { ?>
                        <tr>
                            <td><?php echo $i++;?></td>
                            <td><?php echo $pickupPoint['sameday_id']; ?></td>
                            <td><?php echo $pickupPoint['sameday_alias']; ?></td>
                            <td><?php echo $pickupPoint['city']; ?></td>
                            <td><?php echo $pickupPoint['county']; ?></td>
                            <td><?php echo $pickupPoint['address']; ?></td>
                            <td><?php echo $pickupPoint['default_pickup_point'] == 1 ? $yes : $no; ?></td>
                        </tr>
                        <?php } } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Lockers -->
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_lockers; ?> </h3>
                <a class="btn btn-primary" href="<?php echo $lockers_refresh; ?>" data-toggle="tooltip" title="<?php echo $text_lockers_refresh; ?>"><i class="fa fa-refresh"></i></a>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td></td>
                            <td><?php echo $column_locker_name; ?></td>
                            <td><?php echo $column_locker_county; ?></td>
                            <td><?php echo $column_locker_city; ?></td>
                            <td><?php echo $column_locker_address; ?></td>
                            <td><?php echo $column_locker_lat; ?></td>
                            <td><?php echo $column_locker_lng; ?></td>
                            <td><?php echo $column_locker_postal_code; ?></td>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if (empty($lockers)) { ?>
                        <tr>
                            <td class="text-center" colspan="8"> <?php echo $text_lockers_empty; ?> </td>
                        </tr>
                        <?php } else { ?>
                        <?php $i=1; foreach($lockers as $locker) { ?>
                        <tr>
                            <td><?php echo $i++; ?></td>
                            <td><?php echo $locker['name']; ?></td>
                            <td><?php echo $locker['county']; ?></td>
                            <td><?php echo $locker['city']; ?></td>
                            <td><?php echo $locker['address']; ?></td>
                            <td><?php echo $locker['lat']; ?></td>
                            <td><?php echo $locker['lng']; ?></td>
                            <td><?php echo $locker['postal_code']; ?></td>
                        </tr>
                        <?php } } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>
<?php echo $footer; ?>
