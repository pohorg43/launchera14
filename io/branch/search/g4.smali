.class public Lio/branch/search/g4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/w3;


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "request_id"
            }
            entity = Lio/branch/search/i4;
            onDelete = 0x5
            parentColumns = {
                "request_id"
            }
        .end subannotation
    }
    primaryKeys = {
        "request_id",
        "result_id"
    }
    tableName = "unified_entities"
.end annotation


# static fields
.field public static h:Ljava/lang/String; = "`request_id` TEXT NOT NULL, `result_id` INTEGER NOT NULL, `entity_id` TEXT, `package_id` TEXT, `shortcut_id` TEXT, `user_id` INTEGER, `timestamp` INTEGER, PRIMARY KEY(`request_id`, `result_id`)"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        index = true
        name = "request_id"
    .end annotation
.end field

.field public final b:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "result_id"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "entity_id"
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "package_id"
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "shortcut_id"
    .end annotation
.end field

.field public final f:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "user_id"
    .end annotation
.end field

.field public final g:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/g4;->a:Ljava/lang/String;

    iput p2, p0, Lio/branch/search/g4;->b:I

    iput-object p3, p0, Lio/branch/search/g4;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/g4;->d:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/g4;->e:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/g4;->f:Ljava/lang/Long;

    iput-wide p7, p0, Lio/branch/search/g4;->g:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/t3;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object p0, Lio/branch/search/t3;->k:Lio/branch/search/t3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 4
    .param p1  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/g4;->a:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/branch/search/g4;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "result_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lio/branch/search/g4;->c:Ljava/lang/String;

    const-string v1, "entity_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/g4;->d:Ljava/lang/String;

    const-string v1, "package_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/g4;->e:Ljava/lang/String;

    const-string v1, "shortcut_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/g4;->f:Ljava/lang/Long;

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/g4;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
