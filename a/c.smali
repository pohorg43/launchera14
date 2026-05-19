.class public La/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv1/d;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 16
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

    const-string p0, ""

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_8
    const-string v2, "host"

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1f

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_20

    :cond_19
    new-instance v0, Lv1/r;

    invoke-direct {v0, v2}, Lv1/r;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object v0, v1

    :goto_20
    check-cast v0, Ljava/lang/String;
    :try_end_22
    .catch Lv1/r; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    move-object v0, p0

    :goto_24
    const-string v2, "gc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const-string/jumbo v0, "oaps_version"

    invoke-static {}, Lv1/o;->h()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, -0x40800000  # -1.0f

    :try_start_35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_69

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_69

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_5c

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_6a

    :cond_5c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_68} :catch_69
    .catchall {:try_start_35 .. :try_end_68} :catchall_69

    goto :goto_6a

    :catch_69
    :catchall_69
    :cond_69
    move v0, v3

    :goto_6a
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    const/4 v4, 0x0

    if-lez v2, :cond_72

    goto/16 :goto_150

    :cond_72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "&scheme=gamecenter"

    move v7, v4

    :goto_7f
    const-string v8, "&"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v8, v2

    if-lez v8, :cond_90

    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v9, v8

    goto :goto_97

    :cond_90
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v12, v9

    move v9, v7

    move-object v7, v12

    :goto_97
    if-eqz v7, :cond_bc

    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_bc

    array-length v10, v7

    if-lt v10, v2, :cond_bc

    aget-object v10, v7, v4

    if-eqz v10, :cond_ac

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_ac
    array-length v11, v7

    if-ne v11, v2, :cond_b1

    move-object v7, p0

    goto :goto_b3

    :cond_b1
    aget-object v7, v7, v2

    :goto_b3
    if-eqz v7, :cond_b9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :cond_b9
    invoke-virtual {v5, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    if-gtz v8, :cond_157

    const-string/jumbo p0, "scheme"

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "Y29tLm9wcG8ubWFpbi5BQ1RJT05fTEFVTkNI"

    invoke-static {v2}, Lv1/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "://"

    invoke-static {p0, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "b3Bwby9sYXVuY2g="

    invoke-static {v5}, Lv1/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e7

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_e7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f0

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_104

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_104

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v6, p0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_11a

    :cond_104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_111

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_111
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11a

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_11a
    :goto_11a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_123

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_123
    const/16 p0, 0xa0

    invoke-virtual {v0, v6, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_14f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14f

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_135
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_135

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_135

    const-string p0, "gcsdk_launcher_version"

    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    :cond_14f
    move v0, v3

    :goto_150
    const/high16 p0, 0x40000000  # 2.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_15a

    return v4

    :cond_157
    move v7, v9

    goto/16 :goto_7f

    :cond_15a
    new-instance p0, Lcom/cdo/oaps/a;

    invoke-direct {p0}, Lcom/cdo/oaps/a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/cdo/oaps/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method
