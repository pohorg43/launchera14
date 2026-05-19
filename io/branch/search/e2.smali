.class public final Lio/branch/search/e2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/branch/search/d2;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/t3;",
            "Ljava/util/List<",
            "Lio/branch/search/d2;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    const/4 v0, 0x2

    new-array v1, v0, [Lh4/j;

    new-instance v2, Lio/branch/search/d2;

    const-string v3, "CREATE TABLE IF NOT EXISTS `internal_setup_teardown` (\n                    `id` TEXT,\n                    `phase` TEXT,\n                    `position` INTEGER,\n                    `query` TEXT,\n                    `binds` TEXT,\n                    `repeat_binds` INTEGER)"

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v4, v3}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v5, "SETUP_TEARDOWN_MIGRATION"

    invoke-direct {v3, v5, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    new-instance v3, Lio/branch/search/d2;

    const-string v5, "CREATE TABLE IF NOT EXISTS `tracking_status_history` (\n                    `status` INTEGER NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    PRIMARY KEY (timestamp))"

    const-string v6, "CREATE TABLE IF NOT EXISTS `scheduled_query_execution_history` (\n                    `query_id` INTEGER NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `error` TEXT,\n                    PRIMARY KEY (query_id, timestamp))"

    const-string v7, "CREATE TABLE IF NOT EXISTS `scheduled_queries` (\n                    `query_id` INTEGER NOT NULL,\n                    `query` TEXT NOT NULL,\n                    `bindings` TEXT,\n                    `should_execute_now_query` TEXT NOT NULL,\n                    `should_execute_now_query_bindings` TEXT,\n                    `weight` INTEGER NOT NULL,\n                    `transaction_group_id` INTEGER,\n                    `uses_cursor` INTEGER NOT NULL,\n                    PRIMARY KEY (query_id))"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x5

    invoke-direct {v3, v6, v5}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lh4/j;

    const-string v7, "SCHEDULED_QUERIES"

    invoke-direct {v5, v7, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v5, v1, v3

    invoke-static {v1}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lio/branch/search/e2;->a:Ljava/util/Map;

    const/4 v1, 0x6

    new-array v5, v1, [Lh4/j;

    sget-object v7, Lio/branch/search/t3;->g:Lio/branch/search/t3;

    new-instance v8, Lio/branch/search/d2;

    const-string v9, "CREATE TABLE `app_usage_events_new` (\n                    `package_name` TEXT NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `event_type` INTEGER NOT NULL,\n                    `class_name` TEXT,\n                    PRIMARY KEY(`package_name`, `timestamp`, `event_type`, `class_name`)\n            )"

    const-string v10, "INSERT INTO app_usage_events_new SELECT * FROM app_usage_events"

    const-string v11, "DROP TABLE app_usage_events"

    const-string v12, "ALTER TABLE app_usage_events_new RENAME TO app_usage_events"

    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v8}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Lh4/j;

    invoke-direct {v9, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v5, v2

    sget-object v2, Lio/branch/search/t3;->c:Lio/branch/search/t3;

    new-instance v7, Lio/branch/search/d2;

    const-string v8, "ALTER TABLE local_packages ADD COLUMN `relabeled_name` TEXT"

    const-string v9, "ALTER TABLE local_packages ADD COLUMN `normalized_relabeled_name` TEXT"

    const-string v10, "ALTER TABLE local_packages ADD COLUMN `case_sensitive_normalized_relabeled_name` TEXT"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x4

    invoke-direct {v7, v9, v8}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v7}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lh4/j;

    invoke-direct {v8, v2, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v5, v3

    sget-object v2, Lio/branch/search/t3;->j:Lio/branch/search/t3;

    new-instance v3, Lio/branch/search/d2;

    const-string v7, "CREATE TABLE `new_unified_impressions`(\n                    `request_id` TEXT NOT NULL,\n                    `result_id` INTEGER NOT NULL,\n                    `entity_id` TEXT,\n                    `area` FLOAT NOT NULL,\n                    `start_time` INTEGER NOT NULL,\n                    `duration` INTEGER NOT NULL,\n                    PRIMARY KEY(`request_id`, `result_id`, `start_time`, `duration`)\n                    )"

    const-string v8, "INSERT OR IGNORE INTO new_unified_impressions(\n                    request_id,\n                    result_id,\n                    entity_id,\n                    area,\n                    start_time,\n                    duration)\n                    SELECT request_id, result_id, entity_id, area, start_time, duration FROM unified_impressions"

    const-string v10, "DROP TABLE unified_impressions"

    const-string v11, "ALTER TABLE new_unified_impressions RENAME TO unified_impressions"

    filled-new-array {v7, v8, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v7, Lh4/j;

    invoke-direct {v7, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v0

    sget-object v0, Lio/branch/search/t3;->f:Lio/branch/search/t3;

    new-instance v2, Lio/branch/search/d2;

    const-string v3, "CREATE TABLE `new_app_clicks`(\n                    `session_id` TEXT NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `request_id` TEXT NOT NULL,\n                    `package_name` TEXT NOT NULL,\n                    PRIMARY KEY(`timestamp`)\n                    )"

    const-string v7, "INSERT OR IGNORE INTO new_app_clicks(\n                    session_id,\n                    timestamp,\n                    request_id,\n                    package_name)\n                    SELECT session_id, timestamp, request_id, package_name FROM app_clicks"

    const-string v8, "DROP TABLE app_clicks"

    const-string v10, "ALTER TABLE new_app_clicks RENAME TO app_clicks"

    filled-new-array {v3, v7, v8, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lh4/j;

    invoke-direct {v3, v0, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v5, v4

    sget-object v0, Lio/branch/search/t3;->e:Lio/branch/search/t3;

    new-instance v2, Lio/branch/search/d2;

    const-string v3, "CREATE TABLE `new_search_clicks`(\n                    `session_id` TEXT NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    `request_id` TEXT NOT NULL,\n                    `result_id` INTEGER NOT NULL,\n                    `package_name` TEXT NOT NULL,\n                    `entity_id` TEXT,\n                    PRIMARY KEY(`timestamp`)\n                    )"

    const-string v4, "INSERT OR IGNORE INTO new_search_clicks(\n                    session_id,\n                    timestamp,\n                    request_id,\n                    result_id,\n                    package_name,\n                    entity_id)\n                    SELECT session_id, timestamp, request_id, result_id, package_name, entity_id FROM search_clicks"

    const-string v7, "DROP TABLE search_clicks"

    const-string v8, "ALTER TABLE new_search_clicks RENAME TO search_clicks"

    filled-new-array {v3, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lh4/j;

    invoke-direct {v3, v0, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v5, v9

    sget-object v0, Lio/branch/search/t3;->l:Lio/branch/search/t3;

    new-instance v2, Lio/branch/search/d2;

    const-string v3, "CREATE TABLE `new_tracking_status_history`(\n                    `status` INTEGER NOT NULL,\n                    `timestamp` INTEGER NOT NULL,\n                    PRIMARY KEY(`timestamp`)\n                    )"

    const-string v4, "INSERT OR IGNORE INTO new_tracking_status_history(\n                    status,\n                    timestamp)\n                    SELECT status, timestamp FROM tracking_status_history"

    const-string v7, "DROP TABLE tracking_status_history"

    const-string v8, "ALTER TABLE new_tracking_status_history RENAME TO tracking_status_history"

    filled-new-array {v3, v4, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/branch/search/d2;-><init>(ILjava/util/List;)V

    invoke-static {v2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lh4/j;

    invoke-direct {v2, v0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v5, v6

    invoke-static {v5}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/branch/search/e2;->b:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/util/Collection;I)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/branch/search/t3;",
            ">;I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lio/branch/search/e2;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/d2;

    invoke-virtual {v3}, Lio/branch/search/d2;->b()I

    move-result v4

    if-le v4, p1, :cond_2a

    invoke-virtual {v3}, Lio/branch/search/d2;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a

    :cond_44
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/t3;

    sget-object v2, Lio/branch/search/e2;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_48

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/d2;

    invoke-virtual {v2}, Lio/branch/search/d2;->b()I

    move-result v3

    if-le v3, p1, :cond_62

    invoke-virtual {v2}, Lio/branch/search/d2;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_62

    :cond_7c
    return-object v0
.end method
