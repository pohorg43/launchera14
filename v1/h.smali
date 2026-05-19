.class public Lv1/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv1/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_5
    const-string v0, "host"

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1c

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_16

    goto :goto_1d

    :cond_16
    new-instance p0, Lv1/r;

    invoke-direct {p0, v0}, Lv1/r;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catch Lv1/r; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_22

    :catch_20
    const-string p0, ""

    :goto_22
    const-string/jumbo v0, "mk_op"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    invoke-static {}, Lv1/o;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3d

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    :cond_3d
    move p0, v0

    :goto_3e
    const v1, 0x1e8480

    if-ge p0, v1, :cond_44

    return v0

    :cond_44
    new-instance p0, Lcom/cdo/oaps/a;

    invoke-direct {p0}, Lcom/cdo/oaps/a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/cdo/oaps/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method
