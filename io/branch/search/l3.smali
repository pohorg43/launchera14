.class public Lio/branch/search/l3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/w3;


# annotations
.annotation build Landroidx/room/Entity;
    primaryKeys = {
        "package_name",
        "user_id"
    }
    tableName = "local_packages"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "package_name"
    .end annotation
.end field

.field public final b:Ljava/lang/Long;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "user_id"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/ColumnInfo;
        name = "original_name"
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "relabeled_name"
    .end annotation
.end field

.field public final e:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_installed"
    .end annotation
.end field

.field public final f:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "first_installed_date"
    .end annotation
.end field

.field public final g:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "latest_installed_date"
    .end annotation
.end field

.field public final h:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "latest_uninstalled_date"
    .end annotation
.end field

.field public final i:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "uninstall_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V
    .registers 14
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/l3;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/l3;->b:Ljava/lang/Long;

    iput-object p3, p0, Lio/branch/search/l3;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/l3;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lio/branch/search/l3;->e:Z

    iput-wide p6, p0, Lio/branch/search/l3;->f:J

    iput-wide p8, p0, Lio/branch/search/l3;->g:J

    iput-wide p10, p0, Lio/branch/search/l3;->h:J

    iput-wide p12, p0, Lio/branch/search/l3;->i:J

    return-void
.end method


# virtual methods
.method public a()Lio/branch/search/t3;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/room/Ignore;
    .end annotation

    sget-object p0, Lio/branch/search/t3;->c:Lio/branch/search/t3;

    return-object p0
.end method

.method public a(Landroid/content/ContentValues;)V
    .registers 6
    .param p1  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/l3;->a:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/l3;->b:Ljava/lang/Long;

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lio/branch/search/l3;->c:Ljava/lang/String;

    const-string v1, "original_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/l3;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "normalized_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/l3;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "case_sensitive_normalized_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/l3;->d:Ljava/lang/String;

    const-string v3, "relabeled_name"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/l3;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "normalized_relabeled_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/l3;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lio/branch/search/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "case_sensitive_normalized_relabeled_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/branch/search/l3;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_installed"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-wide v0, p0, Lio/branch/search/l3;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "first_installed_date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/l3;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "installed_date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/l3;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uninstalled_date"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v0, p0, Lio/branch/search/l3;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "uninstall_count"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lio/branch/search/l3;

    if-eqz v0, :cond_1c

    check-cast p1, Lio/branch/search/l3;

    iget-object v0, p1, Lio/branch/search/l3;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/branch/search/l3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p1, Lio/branch/search/l3;->b:Ljava/lang/Long;

    iget-object p0, p0, Lio/branch/search/l3;->b:Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "LocalPackage{name=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/l3;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", userId="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/l3;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/l3;->c:Ljava/lang/String;

    const-string v3, ", relabeledName=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lio/branch/search/l3;->d:Ljava/lang/String;

    const-string v3, ", isInstalled="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lio/branch/search/l3;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstInstalledDateSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/l3;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", latestInstalledDateSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/l3;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", latestUninstalledDateSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/l3;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uninstallCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/branch/search/l3;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
