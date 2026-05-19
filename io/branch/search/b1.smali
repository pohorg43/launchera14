.class public Lio/branch/search/b1;
.super Lio/branch/search/y0;
.source ""


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcom/bumptech/glide/h;

.field public final d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/branch/search/y0;-><init>()V

    iput-object p1, p0, Lio/branch/search/b1;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/f;

    sget-object v1, Lio/branch/search/a1;->a:Ld1/o;

    const-class v2, Lio/branch/search/z0;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bumptech/glide/f;->i(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/b1;->c:Lcom/bumptech/glide/h;

    sget-object v0, Lio/branch/search/b5$a;->e:Lio/branch/search/b5$a;

    invoke-static {p1, v0}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/b1;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(II)Z
    .registers 3

    add-int/lit8 v0, p1, 0xa

    if-le v0, p0, :cond_a

    add-int/lit8 p1, p1, -0xa

    if-le p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public a(Lio/branch/search/z0;)Lp1/c;
    .registers 3
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/z0;",
            ")",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/b1;->c:Lcom/bumptech/glide/h;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/h;->m:Lp1/h;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp1/a;->h(Z)Lp1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iput-object p1, p0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/bumptech/glide/g;->N:Z

    new-instance p1, Lp1/f;

    const/high16 v0, -0x80000000

    invoke-direct {p1, v0, v0}, Lp1/f;-><init>(II)V

    sget-object v0, Lt1/a;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p1, p0, v0}, Lcom/bumptech/glide/g;->w(Lq1/h;Lp1/g;Lp1/a;Ljava/util/concurrent/Executor;)Lq1/h;

    return-object p1
.end method

.method public a()V
    .registers 2

    iget-object p0, p0, Lio/branch/search/b1;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lt1/f;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/bumptech/glide/b;->a:Lz0/l;

    iget-object p0, p0, Lz0/l;->f:Lz0/l$c;

    invoke-virtual {p0}, Lz0/l$c;->a()Lb1/a;

    move-result-object p0

    invoke-interface {p0}, Lb1/a;->clear()V

    return-void

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on a background thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lio/branch/search/z0;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lio/branch/search/R$id;->branch_url_id:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/c;

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lio/branch/search/z0;->b()Lw0/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lw0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    new-instance v0, Lio/branch/search/b1$b;

    invoke-direct {v0, p0, p2, p1}, Lio/branch/search/b1$b;-><init>(Lio/branch/search/b1;Landroid/widget/ImageView;Lio/branch/search/z0;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lp1/a;->k(Landroid/graphics/drawable/Drawable;)Lp1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    iput-object p1, p0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/g;->N:Z

    iput-object v1, p0, Lcom/bumptech/glide/g;->G:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/g;->G:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object p1

    iput-object p3, p1, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    iput-boolean v2, p1, Lcom/bumptech/glide/g;->N:Z

    goto :goto_77

    :cond_5a
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_7a

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p3

    new-instance p5, Lio/branch/search/z0;

    iget-object p1, p1, Lio/branch/search/z0;->c:Lio/branch/search/l;

    invoke-direct {p5, p4, p1}, Lio/branch/search/z0;-><init>(Ljava/lang/String;Lio/branch/search/l;)V

    invoke-virtual {p3}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object p1

    iput-object p5, p1, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    iput-boolean v2, p1, Lcom/bumptech/glide/g;->N:Z

    :goto_77
    iput-object p1, p0, Lcom/bumptech/glide/g;->H:Lcom/bumptech/glide/g;

    goto :goto_82

    :cond_7a
    if-eqz p3, :cond_82

    invoke-virtual {p0, p3}, Lp1/a;->f(Landroid/graphics/drawable/Drawable;)Lp1/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    :cond_82
    :goto_82
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/g;->x(Landroid/widget/ImageView;)Lq1/i;

    return-void
.end method

.method public a(Lio/branch/search/z0;Lio/branch/search/y0$a;)V
    .registers 4
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/y0$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/b1;->a(Lio/branch/search/z0;Lio/branch/search/y0$a;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Lio/branch/search/z0;Lio/branch/search/y0$a;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/y0$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/b1;->c:Lcom/bumptech/glide/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp1/a;->k(Landroid/graphics/drawable/Drawable;)Lp1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iput-object p1, v0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/bumptech/glide/g;->N:Z

    new-instance p1, Lio/branch/search/b1$a;

    invoke-direct {p1, p0, p2, p3}, Lio/branch/search/b1$a;-><init>(Lio/branch/search/b1;Lio/branch/search/y0$a;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->v(Lq1/h;)Lq1/h;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/b1;->c:Lcom/bumptech/glide/h;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/g;

    move-result-object p0

    iput-object v0, p0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/g;->N:Z

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/g;->x(Landroid/widget/ImageView;)Lq1/i;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 11

    iget-object v0, p0, Lio/branch/search/b1;->d:Landroid/content/SharedPreferences;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :try_start_9
    iget-object v3, p0, Lio/branch/search/b1;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2e

    new-instance v5, Ljava/io/File;

    const-string v6, "image_manager_disk_cache"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_3c

    :cond_2c
    move-object v4, v5

    goto :goto_3c

    :cond_2e
    const/4 v3, 0x6

    const-string v5, "Glide"

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "default disk cache dir is null"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    if-nez v4, :cond_3f

    return-void

    :cond_3f
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_46

    return-void

    :cond_46
    array-length v4, v3

    invoke-static {v4, v0}, Lio/branch/search/b1;->a(II)Z

    move-result v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4b} :catch_8e

    const-string v4, "size"

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_58

    :try_start_51
    iget-object p0, p0, Lio/branch/search/b1;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_78

    :cond_58
    array-length v0, v3

    :goto_59
    if-ge v2, v0, :cond_65

    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_65
    iget-object p0, p0, Lio/branch/search/b1;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    array-length v0, v3

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v0, v5

    :goto_78
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7d} :catch_8e

    const-string v2, "files"

    :try_start_7f
    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "total_size"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "glide"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8d} :catch_8e

    goto :goto_94

    :catch_8e
    move-exception p0

    const-string p1, "GlideDrawableLoader.loadDiagnostics"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_94
    return-void
.end method

.method public b(Lio/branch/search/z0;)Lp1/c;
    .registers 3
    .param p1  # Lio/branch/search/z0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/z0;",
            ")",
            "Lp1/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/b1;->c:Lcom/bumptech/glide/h;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/h;->m:Lp1/h;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/g;->t(Lp1/a;)Lcom/bumptech/glide/g;

    move-result-object p0

    iput-object p1, p0, Lcom/bumptech/glide/g;->F:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/g;->N:Z

    new-instance p1, Lp1/f;

    const/high16 v0, -0x80000000

    invoke-direct {p1, v0, v0}, Lp1/f;-><init>(II)V

    sget-object v0, Lt1/a;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p1, p0, v0}, Lcom/bumptech/glide/g;->w(Lq1/h;Lp1/g;Lp1/a;Ljava/util/concurrent/Executor;)Lq1/h;

    return-object p1
.end method
