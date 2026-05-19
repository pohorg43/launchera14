.class public Ll/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:Ll/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ll/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ll/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Ll/l;-><init>(Ll/e;Ll/m;Ll/g;Ll/b;Ll/d;Ll/b;Ll/b;Ll/b;Ll/b;)V

    return-void
.end method

.method public constructor <init>(Ll/e;Ll/m;Ll/g;Ll/b;Ll/d;Ll/b;Ll/b;Ll/b;Ll/b;)V
    .registers 10
    .param p1  # Ll/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Ll/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ll/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ll/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/e;",
            "Ll/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ll/g;",
            "Ll/b;",
            "Ll/d;",
            "Ll/b;",
            "Ll/b;",
            "Ll/b;",
            "Ll/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/l;->a:Ll/e;

    iput-object p2, p0, Ll/l;->b:Ll/m;

    iput-object p3, p0, Ll/l;->c:Ll/g;

    iput-object p4, p0, Ll/l;->d:Ll/b;

    iput-object p5, p0, Ll/l;->e:Ll/d;

    iput-object p6, p0, Ll/l;->h:Ll/b;

    iput-object p7, p0, Ll/l;->i:Ll/b;

    iput-object p8, p0, Ll/l;->f:Ll/b;

    iput-object p9, p0, Ll/l;->g:Ll/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
