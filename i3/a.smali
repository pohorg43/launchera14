.class public final Li3/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "UpkEntity"
.end annotation


# instance fields
.field public a:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "service_id"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "hashed_service_id"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "package_name"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "label"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "icons"
    .end annotation
.end field

.field public g:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "version_code"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "version_name"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "files_directory_path"
    .end annotation
.end field

.field public j:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "last_launch_time"
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "click_json_string"
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "host_package_name"
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "host_component_name"
    .end annotation
.end field

.field public n:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "install_time"
    .end annotation
.end field

.field public o:I
    .annotation build Landroidx/room/ColumnInfo;
        defaultValue = "-1"
        name = "use_template"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Li3/a;->o:I

    return-void
.end method
