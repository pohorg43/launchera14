.class public Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b$a;
    }
.end annotation


# static fields
.field public static volatile j:Lcom/bumptech/glide/b;

.field public static volatile k:Z


# instance fields
.field public final a:Lz0/l;

.field public final b:La1/d;

.field public final c:Lb1/i;

.field public final d:Lcom/bumptech/glide/d;

.field public final e:Lcom/bumptech/glide/f;

.field public final f:La1/b;

.field public final g:Lm1/k;

.field public final h:Lm1/d;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lz0/l;Lb1/i;La1/d;La1/b;Lm1/k;Lm1/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .registers 38
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lz0/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lb1/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # La1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # La1/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Lm1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Lm1/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9  # Lcom/bumptech/glide/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10  # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lz0/l;",
            "Lb1/i;",
            "La1/d;",
            "La1/b;",
            "Lm1/k;",
            "Lm1/d;",
            "I",
            "Lcom/bumptech/glide/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lp1/g<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    const-class v4, Lu0/a;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/Integer;

    const-class v7, [B

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/bumptech/glide/b;->a:Lz0/l;

    iput-object v1, v0, Lcom/bumptech/glide/b;->b:La1/d;

    iput-object v3, v0, Lcom/bumptech/glide/b;->f:La1/b;

    move-object/from16 v8, p3

    iput-object v8, v0, Lcom/bumptech/glide/b;->c:Lb1/i;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/bumptech/glide/b;->g:Lm1/k;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/bumptech/glide/b;->h:Lm1/d;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v10, Lcom/bumptech/glide/f;

    invoke-direct {v10}, Lcom/bumptech/glide/f;-><init>()V

    iput-object v10, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/f;

    new-instance v11, Lg1/k;

    invoke-direct {v11}, Lg1/k;-><init>()V

    iget-object v12, v10, Lcom/bumptech/glide/f;->g:Lo1/b;

    monitor-enter v12

    :try_start_41
    iget-object v13, v12, Lo1/b;->a:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_3c6

    monitor-exit v12

    new-instance v11, Lg1/p;

    invoke-direct {v11}, Lg1/p;-><init>()V

    iget-object v12, v10, Lcom/bumptech/glide/f;->g:Lo1/b;

    monitor-enter v12

    :try_start_4f
    iget-object v13, v12, Lo1/b;->a:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_3c3

    monitor-exit v12

    invoke-virtual {v10}, Lcom/bumptech/glide/f;->e()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lcom/bumptech/glide/load/resource/gif/a;

    invoke-direct {v12, v2, v11, v1, v3}, Lcom/bumptech/glide/load/resource/gif/a;-><init>(Landroid/content/Context;Ljava/util/List;La1/d;La1/b;)V

    new-instance v13, Lg1/a0;

    new-instance v14, Lg1/a0$g;

    invoke-direct {v14}, Lg1/a0$g;-><init>()V

    invoke-direct {v13, v1, v14}, Lg1/a0;-><init>(La1/d;Lg1/a0$f;)V

    new-instance v14, Lg1/m;

    invoke-virtual {v10}, Lcom/bumptech/glide/f;->e()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-direct {v14, v15, v9, v1, v3}, Lg1/m;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;La1/d;La1/b;)V

    if-eqz p13, :cond_82

    new-instance v9, Lg1/t;

    invoke-direct {v9}, Lg1/t;-><init>()V

    new-instance v15, Lg1/h;

    invoke-direct {v15}, Lg1/h;-><init>()V

    goto :goto_8c

    :cond_82
    new-instance v15, Lg1/g;

    invoke-direct {v15, v14}, Lg1/g;-><init>(Lg1/m;)V

    new-instance v9, Lg1/x;

    invoke-direct {v9, v14, v3}, Lg1/x;-><init>(Lg1/m;La1/b;)V

    :goto_8c
    new-instance v0, Li1/d;

    invoke-direct {v0, v2}, Li1/d;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v7

    new-instance v7, Ld1/s$c;

    invoke-direct {v7, v8}, Ld1/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v2, Ld1/s$d;

    invoke-direct {v2, v8}, Ld1/s$d;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v17, v5

    new-instance v5, Ld1/s$b;

    invoke-direct {v5, v8}, Ld1/s$b;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p3, v2

    new-instance v2, Ld1/s$a;

    invoke-direct {v2, v8}, Ld1/s$a;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 p6, v2

    new-instance v2, Lg1/c;

    invoke-direct {v2, v3}, Lg1/c;-><init>(La1/b;)V

    move-object/from16 v18, v6

    new-instance v6, Ll1/a;

    invoke-direct {v6}, Ll1/a;-><init>()V

    move-object/from16 p7, v6

    new-instance v6, Ll1/d;

    invoke-direct {v6}, Ll1/d;-><init>()V

    move-object/from16 p13, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v19, v6

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v20, v5

    new-instance v5, Ld1/c;

    invoke-direct {v5}, Ld1/c;-><init>()V

    invoke-virtual {v10, v6, v5}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lw0/a;)Lcom/bumptech/glide/f;

    const-class v5, Ljava/io/InputStream;

    new-instance v6, Ld1/t;

    invoke-direct {v6, v3}, Ld1/t;-><init>(La1/b;)V

    invoke-virtual {v10, v5, v6}, Lcom/bumptech/glide/f;->b(Ljava/lang/Class;Lw0/a;)Lcom/bumptech/glide/f;

    const-string v5, "Bitmap"

    const-class v6, Ljava/nio/ByteBuffer;

    move-object/from16 v21, v7

    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v5, v6, v7, v15}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v5, "Bitmap"

    const-class v6, Ljava/io/InputStream;

    const-class v7, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v5, v6, v7, v9}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v5, "Bitmap"

    const-class v6, Landroid/os/ParcelFileDescriptor;

    const-class v7, Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    new-instance v0, Lg1/v;

    invoke-direct {v0, v14}, Lg1/v;-><init>(Lg1/m;)V

    invoke-virtual {v10, v5, v6, v7, v0}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "Bitmap"

    const-class v5, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v0, v5, v6, v13}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "Bitmap"

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lg1/a0;

    new-instance v14, Lg1/a0$c;

    move-object/from16 v23, v4

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Lg1/a0$c;-><init>(Lg1/a0$a;)V

    invoke-direct {v7, v1, v14}, Lg1/a0;-><init>(La1/d;Lg1/a0$f;)V

    invoke-virtual {v10, v0, v5, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v4, Landroid/graphics/Bitmap;

    sget-object v5, Ld1/v$a;->a:Ld1/v$a;

    invoke-virtual {v10, v0, v4, v5}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-string v0, "Bitmap"

    const-class v4, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/Bitmap;

    new-instance v7, Lg1/z;

    invoke-direct {v7}, Lg1/z;-><init>()V

    invoke-virtual {v10, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v10, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Lw0/f;)Lcom/bumptech/glide/f;

    const-string v0, "BitmapDrawable"

    const-class v4, Ljava/nio/ByteBuffer;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lg1/a;

    invoke-direct {v7, v8, v15}, Lg1/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v10, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "BitmapDrawable"

    const-class v4, Ljava/io/InputStream;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lg1/a;

    invoke-direct {v7, v8, v9}, Lg1/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v10, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "BitmapDrawable"

    const-class v4, Landroid/os/ParcelFileDescriptor;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lg1/a;

    invoke-direct {v7, v8, v13}, Lg1/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    invoke-virtual {v10, v0, v4, v6, v7}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lg1/b;

    invoke-direct {v4, v1, v2}, Lg1/b;-><init>(La1/d;Lw0/f;)V

    invoke-virtual {v10, v0, v4}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Lw0/f;)Lcom/bumptech/glide/f;

    const-string v0, "Gif"

    const-class v2, Ljava/io/InputStream;

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/d;

    invoke-direct {v6, v11, v12, v3}, Lcom/bumptech/glide/load/resource/gif/d;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/f;La1/b;)V

    invoke-virtual {v10, v0, v2, v4, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-string v0, "Gif"

    const-class v2, Ljava/nio/ByteBuffer;

    const-class v4, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v10, v0, v2, v4, v12}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    new-instance v2, Lk1/b;

    invoke-direct {v2}, Lk1/b;-><init>()V

    invoke-virtual {v10, v0, v2}, Lcom/bumptech/glide/f;->c(Ljava/lang/Class;Lw0/f;)Lcom/bumptech/glide/f;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v0, v5}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-string v2, "Bitmap"

    const-class v4, Landroid/graphics/Bitmap;

    new-instance v6, Lcom/bumptech/glide/load/resource/gif/c;

    invoke-direct {v6, v1}, Lcom/bumptech/glide/load/resource/gif/c;-><init>(La1/d;)V

    invoke-virtual {v10, v2, v0, v4, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string v4, "legacy_append"

    move-object/from16 v6, v22

    invoke-virtual {v10, v4, v0, v2, v6}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v4, Lg1/a;

    invoke-direct {v4, v6, v1}, Lg1/a;-><init>(Li1/d;La1/d;)V

    const-string v6, "legacy_append"

    invoke-virtual {v10, v6, v0, v2, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    new-instance v0, Lh1/a$a;

    invoke-direct {v0}, Lh1/a$a;-><init>()V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/f;->h(Lx0/e$a;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v4, Ld1/d$b;

    invoke-direct {v4}, Ld1/d$b;-><init>()V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Ld1/f$e;

    invoke-direct {v4}, Ld1/f$e;-><init>()V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    new-instance v4, Lj1/a;

    invoke-direct {v4}, Lj1/a;-><init>()V

    const-string v6, "legacy_append"

    invoke-virtual {v10, v6, v0, v2, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Ld1/f$b;

    invoke-direct {v4}, Ld1/f$b;-><init>()V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/File;

    const-class v2, Ljava/io/File;

    invoke-virtual {v10, v0, v2, v5}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    new-instance v0, Lx0/k$a;

    invoke-direct {v0, v3}, Lx0/k$a;-><init>(La1/b;)V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/f;->h(Lx0/e$a;)Lcom/bumptech/glide/f;

    new-instance v0, Lx0/m$a;

    invoke-direct {v0}, Lx0/m$a;-><init>()V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/f;->h(Lx0/e$a;)Lcom/bumptech/glide/f;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v4, v21

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v6, v20

    invoke-virtual {v10, v0, v2, v6}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v2, Ljava/io/InputStream;

    move-object/from16 v7, v18

    invoke-virtual {v10, v7, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10, v7, v2, v6}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/net/Uri;

    move-object/from16 v4, p3

    invoke-virtual {v10, v7, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v6, p6

    invoke-virtual {v10, v0, v2, v6}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v10, v7, v2, v6}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Ld1/e$c;

    invoke-direct {v2}, Ld1/e$c;-><init>()V

    move-object/from16 v4, v17

    invoke-virtual {v10, v4, v0, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v6, Ld1/e$c;

    invoke-direct {v6}, Ld1/e$c;-><init>()V

    invoke-virtual {v10, v0, v2, v6}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Ld1/u$c;

    invoke-direct {v2}, Ld1/u$c;-><init>()V

    invoke-virtual {v10, v4, v0, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Ld1/u$b;

    invoke-direct {v2}, Ld1/u$b;-><init>()V

    invoke-virtual {v10, v4, v0, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/content/res/AssetFileDescriptor;

    new-instance v2, Ld1/u$a;

    invoke-direct {v2}, Ld1/u$a;-><init>()V

    invoke-virtual {v10, v4, v0, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Le1/b$a;

    invoke-direct {v4}, Le1/b$a;-><init>()V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Ld1/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v4, v6}, Ld1/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Ld1/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v4, v6}, Ld1/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Le1/c$a;

    move-object/from16 v6, p1

    invoke-direct {v4, v6}, Le1/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Le1/d$a;

    invoke-direct {v4, v6}, Le1/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Le1/e$c;

    invoke-direct {v4, v6}, Le1/e$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Le1/e$b;

    invoke-direct {v4, v6}, Le1/e$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Ld1/w$d;

    move-object/from16 v7, v19

    invoke-direct {v4, v7}, Ld1/w$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    new-instance v4, Ld1/w$b;

    invoke-direct {v4, v7}, Ld1/w$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    new-instance v4, Ld1/w$a;

    invoke-direct {v4, v7}, Ld1/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Ld1/x$a;

    invoke-direct {v4}, Ld1/x$a;-><init>()V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/net/URL;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Le1/f$a;

    invoke-direct {v4}, Le1/f$a;-><init>()V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Ljava/io/File;

    new-instance v4, Ld1/k$a;

    invoke-direct {v4, v6}, Ld1/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ld1/g;

    const-class v2, Ljava/io/InputStream;

    new-instance v4, Le1/a$a;

    invoke-direct {v4}, Le1/a$a;-><init>()V

    invoke-virtual {v10, v0, v2, v4}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/nio/ByteBuffer;

    new-instance v2, Ld1/b$a;

    invoke-direct {v2}, Ld1/b$a;-><init>()V

    move-object/from16 v4, v16

    invoke-virtual {v10, v4, v0, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Ljava/io/InputStream;

    new-instance v2, Ld1/b$d;

    invoke-direct {v2}, Ld1/b$d;-><init>()V

    invoke-virtual {v10, v4, v0, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/net/Uri;

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v10, v0, v2, v5}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0, v2, v5}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;Ljava/lang/Class;Ld1/o;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    const-class v2, Landroid/graphics/drawable/Drawable;

    new-instance v5, Li1/e;

    invoke-direct {v5}, Li1/e;-><init>()V

    const-string v7, "legacy_append"

    invoke-virtual {v10, v7, v0, v2, v5}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Ll1/b;

    invoke-direct {v5, v8}, Ll1/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v10, v0, v2, v5}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ll1/e;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/Bitmap;

    move-object/from16 v2, p7

    invoke-virtual {v10, v0, v4, v2}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ll1/e;)Lcom/bumptech/glide/f;

    const-class v0, Landroid/graphics/drawable/Drawable;

    new-instance v5, Ll1/c;

    move-object/from16 v7, p13

    invoke-direct {v5, v1, v2, v7}, Ll1/c;-><init>(La1/d;Ll1/e;Ll1/e;)V

    invoke-virtual {v10, v0, v4, v5}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ll1/e;)Lcom/bumptech/glide/f;

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v10, v0, v4, v7}, Lcom/bumptech/glide/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ll1/e;)Lcom/bumptech/glide/f;

    new-instance v0, Lg1/a0;

    new-instance v2, Lg1/a0$d;

    invoke-direct {v2}, Lg1/a0$d;-><init>()V

    invoke-direct {v0, v1, v2}, Lg1/a0;-><init>(La1/d;Lg1/a0$f;)V

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    const-string v4, "legacy_append"

    invoke-virtual {v10, v4, v1, v2, v0}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Lg1/a;

    invoke-direct {v4, v8, v0}, Lg1/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/f;)V

    const-string v0, "legacy_append"

    invoke-virtual {v10, v0, v1, v2, v4}, Lcom/bumptech/glide/f;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f;

    new-instance v5, Lq1/f;

    invoke-direct {v5}, Lq1/f;-><init>()V

    new-instance v0, Lcom/bumptech/glide/d;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v10

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/d;-><init>(Landroid/content/Context;La1/b;Lcom/bumptech/glide/f;Lq1/f;Lcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lz0/l;ZI)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/d;

    return-void

    :catchall_3c3
    move-exception v0

    monitor-exit v12

    throw v0

    :catchall_3c6
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .registers 27
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "Glide.class"
    .end annotation

    sget-boolean v0, Lcom/bumptech/glide/b;->k:Z

    if-nez v0, :cond_31e

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/b;->k:Z

    new-instance v1, Lcom/bumptech/glide/c;

    invoke-direct {v1}, Lcom/bumptech/glide/c;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const-string v2, "ManifestParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "Loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :try_start_26
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x2

    if-nez v5, :cond_45

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string v4, "Got null app info metadata"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    :cond_45
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_61

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got app info metadata: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6b
    :goto_6b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "GlideModule"

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    invoke-static {v7}, Ln1/e;->a(Ljava/lang/String;)Ln1/c;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded Glide module: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_a6} :catch_315

    goto :goto_6b

    :cond_a7
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b2

    const-string v4, "Finished loading Glide modules"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    :goto_b2
    const-string v2, "Glide"

    if-eqz p1, :cond_fd

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->c()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_fd

    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->c()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln1/c;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_df

    goto :goto_c8

    :cond_df
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_f9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_c8

    :cond_fd
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_128

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_107
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_128

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln1/c;

    const-string v5, "Discovered GlideModule from manifest: "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    :cond_128
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bumptech/glide/c;->m:Lm1/k$b;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln1/c;

    invoke-interface {v3, v15, v1}, Ln1/b;->a(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    goto :goto_12f

    :cond_13f
    iget-object v2, v1, Lcom/bumptech/glide/c;->f:Lc1/a;

    const/4 v13, 0x0

    if-nez v2, :cond_17c

    invoke-static {}, Lc1/a;->a()I

    move-result v18

    const-string/jumbo v2, "source"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_174

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v19, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v4, Lc1/a$a;

    sget-object v5, Lc1/a$b;->a:Lc1/a$b;

    invoke-direct {v4, v2, v5, v13}, Lc1/a$a;-><init>(Ljava/lang/String;Lc1/a$b;Z)V

    move-object/from16 v16, v3

    move/from16 v17, v18

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Lc1/a;

    invoke-direct {v2, v3}, Lc1/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->f:Lc1/a;

    goto :goto_17c

    :cond_174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17c
    :goto_17c
    iget-object v2, v1, Lcom/bumptech/glide/c;->g:Lc1/a;

    if-nez v2, :cond_1b7

    sget v2, Lc1/a;->c:I

    const-string v2, "disk-cache"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1af

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v19, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v4, Lc1/a$a;

    sget-object v5, Lc1/a$b;->a:Lc1/a$b;

    invoke-direct {v4, v2, v5, v0}, Lc1/a$a;-><init>(Ljava/lang/String;Lc1/a$b;Z)V

    const/16 v18, 0x1

    move-object/from16 v16, v3

    move/from16 v17, v18

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v2, Lc1/a;

    invoke-direct {v2, v3}, Lc1/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->g:Lc1/a;

    goto :goto_1b7

    :cond_1af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b7
    :goto_1b7
    iget-object v2, v1, Lcom/bumptech/glide/c;->n:Lc1/a;

    if-nez v2, :cond_1fa

    invoke-static {}, Lc1/a;->a()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1c5

    move/from16 v18, v6

    goto :goto_1c7

    :cond_1c5
    move/from16 v18, v0

    :goto_1c7
    const-string v2, "animation"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f2

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v19, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v4, Lc1/a$a;

    sget-object v5, Lc1/a$b;->a:Lc1/a$b;

    invoke-direct {v4, v2, v5, v0}, Lc1/a$a;-><init>(Ljava/lang/String;Lc1/a$b;Z)V

    move-object/from16 v16, v3

    move/from16 v17, v18

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lc1/a;

    invoke-direct {v0, v3}, Lc1/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->n:Lc1/a;

    goto :goto_1fa

    :cond_1f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fa
    :goto_1fa
    iget-object v0, v1, Lcom/bumptech/glide/c;->i:Lb1/j;

    if-nez v0, :cond_20a

    new-instance v0, Lb1/j$a;

    invoke-direct {v0, v15}, Lb1/j$a;-><init>(Landroid/content/Context;)V

    new-instance v2, Lb1/j;

    invoke-direct {v2, v0}, Lb1/j;-><init>(Lb1/j$a;)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->i:Lb1/j;

    :cond_20a
    iget-object v0, v1, Lcom/bumptech/glide/c;->j:Lm1/d;

    if-nez v0, :cond_215

    new-instance v0, Lm1/f;

    invoke-direct {v0}, Lm1/f;-><init>()V

    iput-object v0, v1, Lcom/bumptech/glide/c;->j:Lm1/d;

    :cond_215
    iget-object v0, v1, Lcom/bumptech/glide/c;->c:La1/d;

    if-nez v0, :cond_22f

    iget-object v0, v1, Lcom/bumptech/glide/c;->i:Lb1/j;

    iget v0, v0, Lb1/j;->a:I

    if-lez v0, :cond_228

    new-instance v2, La1/j;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, La1/j;-><init>(J)V

    iput-object v2, v1, Lcom/bumptech/glide/c;->c:La1/d;

    goto :goto_22f

    :cond_228
    new-instance v0, La1/e;

    invoke-direct {v0}, La1/e;-><init>()V

    iput-object v0, v1, Lcom/bumptech/glide/c;->c:La1/d;

    :cond_22f
    :goto_22f
    iget-object v0, v1, Lcom/bumptech/glide/c;->d:La1/b;

    if-nez v0, :cond_23e

    new-instance v0, La1/i;

    iget-object v2, v1, Lcom/bumptech/glide/c;->i:Lb1/j;

    iget v2, v2, Lb1/j;->d:I

    invoke-direct {v0, v2}, La1/i;-><init>(I)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->d:La1/b;

    :cond_23e
    iget-object v0, v1, Lcom/bumptech/glide/c;->e:Lb1/i;

    if-nez v0, :cond_24e

    new-instance v0, Lb1/h;

    iget-object v2, v1, Lcom/bumptech/glide/c;->i:Lb1/j;

    iget v2, v2, Lb1/j;->b:I

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lb1/h;-><init>(J)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->e:Lb1/i;

    :cond_24e
    iget-object v0, v1, Lcom/bumptech/glide/c;->h:Lb1/a$a;

    if-nez v0, :cond_259

    new-instance v0, Lb1/g;

    invoke-direct {v0, v15}, Lb1/g;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->h:Lb1/a$a;

    :cond_259
    iget-object v0, v1, Lcom/bumptech/glide/c;->b:Lz0/l;

    if-nez v0, :cond_296

    new-instance v0, Lz0/l;

    iget-object v3, v1, Lcom/bumptech/glide/c;->e:Lb1/i;

    iget-object v4, v1, Lcom/bumptech/glide/c;->h:Lb1/a$a;

    iget-object v5, v1, Lcom/bumptech/glide/c;->g:Lc1/a;

    iget-object v6, v1, Lcom/bumptech/glide/c;->f:Lc1/a;

    new-instance v7, Lc1/a;

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v19, Lc1/a;->b:J

    sget-object v21, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lc1/a$a;

    sget-object v9, Lc1/a$b;->a:Lc1/a$b;

    const-string/jumbo v10, "source-unlimited"

    invoke-direct {v8, v10, v9, v13}, Lc1/a$a;-><init>(Ljava/lang/String;Lc1/a$b;Z)V

    const/16 v17, 0x0

    const v18, 0x7fffffff

    move-object/from16 v16, v2

    move-object/from16 v23, v8

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v7, v2}, Lc1/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v8, v1, Lcom/bumptech/glide/c;->n:Lc1/a;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lz0/l;-><init>(Lb1/i;Lb1/a$a;Lc1/a;Lc1/a;Lc1/a;Lc1/a;Z)V

    iput-object v0, v1, Lcom/bumptech/glide/c;->b:Lz0/l;

    :cond_296
    iget-object v0, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    if-nez v0, :cond_2a1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    goto :goto_2a7

    :cond_2a1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    :goto_2a7
    new-instance v8, Lm1/k;

    iget-object v0, v1, Lcom/bumptech/glide/c;->m:Lm1/k$b;

    invoke-direct {v8, v0}, Lm1/k;-><init>(Lm1/k$b;)V

    new-instance v0, Lcom/bumptech/glide/b;

    iget-object v4, v1, Lcom/bumptech/glide/c;->b:Lz0/l;

    iget-object v5, v1, Lcom/bumptech/glide/c;->e:Lb1/i;

    iget-object v6, v1, Lcom/bumptech/glide/c;->c:La1/d;

    iget-object v7, v1, Lcom/bumptech/glide/c;->d:La1/b;

    iget-object v9, v1, Lcom/bumptech/glide/c;->j:Lm1/d;

    iget v10, v1, Lcom/bumptech/glide/c;->k:I

    iget-object v11, v1, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    iget-object v12, v1, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    iget-object v1, v1, Lcom/bumptech/glide/c;->o:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    move-object v3, v15

    move/from16 v18, v13

    move-object v13, v1

    move-object v1, v14

    move/from16 v14, v16

    move-object/from16 v24, v15

    move/from16 v15, v17

    invoke-direct/range {v2 .. v15}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lz0/l;Lb1/i;La1/d;La1/b;Lm1/k;Lm1/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln1/c;

    :try_start_2e5
    iget-object v3, v0, Lcom/bumptech/glide/b;->e:Lcom/bumptech/glide/f;

    move-object/from16 v4, v24

    invoke-interface {v2, v4, v0, v3}, Ln1/f;->b(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/f;)V
    :try_end_2ec
    .catch Ljava/lang/AbstractMethodError; {:try_start_2e5 .. :try_end_2ec} :catch_2ef

    move-object/from16 v24, v4

    goto :goto_2d9

    :catch_2ef
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_30b
    move-object/from16 v4, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    sput-boolean v18, Lcom/bumptech/glide/b;->k:Z

    return-void

    :catch_315
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find metadata to parse GlideModules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_31e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .registers 8
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    if-nez v0, :cond_5c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_9
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_29} :catch_3f
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_29} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_29} :catch_35
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_29} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_29} :catch_2b

    move-object v1, v0

    goto :goto_4d

    :catch_2b
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_30
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_35
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3a
    move-exception p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Ljava/lang/Exception;)V

    throw v1

    :catch_3f
    const/4 v0, 0x5

    const-string v2, "Glide"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    const-class v0, Lcom/bumptech/glide/b;

    monitor-enter v0

    :try_start_50
    sget-object v2, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    if-nez v2, :cond_57

    invoke-static {p0, v1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    :cond_57
    monitor-exit v0

    goto :goto_5c

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_59

    throw p0

    :cond_5c
    :goto_5c
    sget-object p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->g:Lm1/k;

    invoke-virtual {v0, p0}, Lm1/k;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 4

    invoke-static {}, Lt1/f;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->c:Lb1/i;

    check-cast v0, Lt1/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lt1/c;->e(J)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:La1/d;

    invoke-interface {v0}, La1/d;->b()V

    iget-object p0, p0, Lcom/bumptech/glide/b;->f:La1/b;

    invoke-interface {p0}, La1/b;->b()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 7

    invoke-static {}, Lt1/f;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/h;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_19
    iget-object v0, p0, Lcom/bumptech/glide/b;->c:Lb1/i;

    check-cast v0, Lb1/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    if-lt p1, v1, :cond_2a

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lt1/c;->e(J)V

    goto :goto_3c

    :cond_2a
    const/16 v1, 0x14

    if-ge p1, v1, :cond_32

    const/16 v1, 0xf

    if-ne p1, v1, :cond_3c

    :cond_32
    monitor-enter v0

    :try_start_33
    iget-wide v1, v0, Lt1/c;->b:J
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_47

    monitor-exit v0

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lt1/c;->e(J)V

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:La1/d;

    invoke-interface {v0, p1}, La1/d;->a(I)V

    iget-object p0, p0, Lcom/bumptech/glide/b;->f:La1/b;

    invoke-interface {p0, p1}, La1/b;->a(I)V

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0

    throw p0
.end method
