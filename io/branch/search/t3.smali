.class public final enum Lio/branch/search/t3;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/branch/search/t3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lio/branch/search/t3;

.field public static final enum d:Lio/branch/search/t3;

.field public static final enum e:Lio/branch/search/t3;

.field public static final enum f:Lio/branch/search/t3;

.field public static final enum g:Lio/branch/search/t3;

.field public static final enum h:Lio/branch/search/t3;

.field public static final enum i:Lio/branch/search/t3;

.field public static final enum j:Lio/branch/search/t3;

.field public static final enum k:Lio/branch/search/t3;

.field public static final enum l:Lio/branch/search/t3;

.field public static final synthetic m:[Lio/branch/search/t3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lio/branch/search/t3;

    const-string v1, "local_packages"

    const/4 v2, 0x0

    const-string v3, "`package_name` TEXT NOT NULL, `user_id` INTEGER NOT NULL, `original_name` TEXT NOT NULL, `normalized_name` TEXT NOT NULL, `case_sensitive_normalized_name` TEXT NOT NULL, `relabeled_name` TEXT, `normalized_relabeled_name` TEXT, `case_sensitive_normalized_relabeled_name` TEXT, `is_installed` BOOLEAN NOT NULL, `first_installed_date` INTEGER, `installed_date` INTEGER, `uninstalled_date` INTEGER, `uninstall_count` INTEGER, PRIMARY KEY(`package_name`, `user_id`)"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lio/branch/search/t3;->c:Lio/branch/search/t3;

    new-instance v1, Lio/branch/search/t3;

    sget-object v3, Lio/branch/search/o3;->h:Ljava/lang/String;

    const-string v5, "local_entities"

    invoke-direct {v1, v5, v4, v3}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/branch/search/t3;->d:Lio/branch/search/t3;

    new-instance v3, Lio/branch/search/t3;

    const-string v5, "search_clicks"

    const/4 v6, 0x2

    const-string v7, "`session_id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `request_id` TEXT NOT NULL, `result_id` INTEGER NOT NULL, `package_name` TEXT NOT NULL, `entity_id` TEXT,PRIMARY KEY(`timestamp`)"

    invoke-direct {v3, v5, v6, v7}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/branch/search/t3;->e:Lio/branch/search/t3;

    new-instance v5, Lio/branch/search/t3;

    const-string v7, "app_clicks"

    const/4 v8, 0x3

    const-string v9, "`session_id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `request_id` TEXT NOT NULL, `package_name` TEXT NOT NULL,PRIMARY KEY(`timestamp`)"

    invoke-direct {v5, v7, v8, v9}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/branch/search/t3;->f:Lio/branch/search/t3;

    new-instance v7, Lio/branch/search/t3;

    const-string v9, "app_usage_events"

    const/4 v10, 0x4

    const-string v11, "`package_name` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, `event_type` INTEGER NOT NULL, `class_name` TEXT, PRIMARY KEY(`package_name`, `timestamp`, `event_type`, `class_name`)"

    invoke-direct {v7, v9, v10, v11}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/branch/search/t3;->g:Lio/branch/search/t3;

    new-instance v9, Lio/branch/search/t3;

    const-string v11, "app_usage_stats"

    const/4 v12, 0x5

    const-string v13, "`package_name` TEXT NOT NULL, `screen_uptime` INTEGER NOT NULL, `last_usage_timestamp` INTEGER NOT NULL, PRIMARY KEY(`package_name`)"

    invoke-direct {v9, v11, v12, v13, v4}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lio/branch/search/t3;->h:Lio/branch/search/t3;

    new-instance v11, Lio/branch/search/t3;

    sget-object v13, Lio/branch/search/i4;->f:Ljava/lang/String;

    const-string v14, "unified_virtual_requests"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lio/branch/search/t3;->i:Lio/branch/search/t3;

    new-instance v13, Lio/branch/search/t3;

    sget-object v14, Lio/branch/search/h4;->g:Ljava/lang/String;

    const-string v15, "unified_impressions"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/branch/search/t3;->j:Lio/branch/search/t3;

    new-instance v14, Lio/branch/search/t3;

    sget-object v15, Lio/branch/search/g4;->h:Ljava/lang/String;

    const-string v12, "unified_entities"

    const/16 v10, 0x8

    invoke-direct {v14, v12, v10, v15}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lio/branch/search/t3;->k:Lio/branch/search/t3;

    new-instance v12, Lio/branch/search/t3;

    const-string v15, "tracking_status_history"

    const/16 v10, 0x9

    const-string v8, "`status` INTEGER NOT NULL, `timestamp` INTEGER NOT NULL,PRIMARY KEY(`timestamp`)"

    invoke-direct {v12, v15, v10, v8}, Lio/branch/search/t3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lio/branch/search/t3;->l:Lio/branch/search/t3;

    const/16 v8, 0xa

    new-array v8, v8, [Lio/branch/search/t3;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v14, v8, v0

    aput-object v12, v8, v10

    sput-object v8, Lio/branch/search/t3;->m:[Lio/branch/search/t3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/t3;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/branch/search/t3;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/branch/search/t3;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lio/branch/search/t3;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/branch/search/t3;
    .registers 2

    const-class v0, Lio/branch/search/t3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/branch/search/t3;

    return-object p0
.end method

.method public static values()[Lio/branch/search/t3;
    .registers 1

    sget-object v0, Lio/branch/search/t3;->m:[Lio/branch/search/t3;

    invoke-virtual {v0}, [Lio/branch/search/t3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/branch/search/t3;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS `"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "` ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/t3;->a:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "DROP TABLE IF EXISTS `"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "`"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
