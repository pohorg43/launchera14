.class public Lcom/bumptech/glide/d;
.super Landroid/content/ContextWrapper;
.source ""


# static fields
.field public static final k:Lcom/bumptech/glide/i;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:La1/b;

.field public final b:Lcom/bumptech/glide/f;

.field public final c:Lq1/f;

.field public final d:Lcom/bumptech/glide/b$a;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp1/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;"
        }
    .end annotation
.end field

.field public final g:Lz0/l;

.field public final h:Z

.field public final i:I

.field public j:Lp1/h;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/a;

    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/d;->k:Lcom/bumptech/glide/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La1/b;Lcom/bumptech/glide/f;Lq1/f;Lcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lz0/l;ZI)V
    .registers 11
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # La1/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lcom/bumptech/glide/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lq1/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Lcom/bumptech/glide/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lz0/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La1/b;",
            "Lcom/bumptech/glide/f;",
            "Lq1/f;",
            "Lcom/bumptech/glide/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/i<",
            "**>;>;",
            "Ljava/util/List<",
            "Lp1/g<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lz0/l;",
            "ZI)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bumptech/glide/d;->a:La1/b;

    iput-object p3, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/f;

    iput-object p4, p0, Lcom/bumptech/glide/d;->c:Lq1/f;

    iput-object p5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/b$a;

    iput-object p7, p0, Lcom/bumptech/glide/d;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/d;->f:Ljava/util/Map;

    iput-object p8, p0, Lcom/bumptech/glide/d;->g:Lz0/l;

    iput-boolean p9, p0, Lcom/bumptech/glide/d;->h:Z

    iput p10, p0, Lcom/bumptech/glide/d;->i:I

    return-void
.end method
