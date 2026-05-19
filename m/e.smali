.class public Lm/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ll/c;

.field public final d:Ll/d;

.field public final e:Ll/f;

.field public final f:Ll/f;

.field public final g:Ll/b;

.field public final h:I

.field public final i:I

.field public final j:F

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILl/c;Ll/d;Ll/f;Ll/f;Ll/b;IIFLjava/util/List;Ll/b;Z)V
    .registers 14
    .param p12  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ll/c;",
            "Ll/d;",
            "Ll/f;",
            "Ll/f;",
            "Ll/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "F",
            "Ljava/util/List<",
            "Ll/b;",
            ">;",
            "Ll/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/e;->a:Ljava/lang/String;

    iput p2, p0, Lm/e;->b:I

    iput-object p3, p0, Lm/e;->c:Ll/c;

    iput-object p4, p0, Lm/e;->d:Ll/d;

    iput-object p5, p0, Lm/e;->e:Ll/f;

    iput-object p6, p0, Lm/e;->f:Ll/f;

    iput-object p7, p0, Lm/e;->g:Ll/b;

    iput p8, p0, Lm/e;->h:I

    iput p9, p0, Lm/e;->i:I

    iput p10, p0, Lm/e;->j:F

    iput-object p11, p0, Lm/e;->k:Ljava/util/List;

    iput-object p12, p0, Lm/e;->l:Ll/b;

    iput-boolean p13, p0, Lm/e;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 4

    new-instance v0, Lh/i;

    invoke-direct {v0, p1, p2, p0}, Lh/i;-><init>(Lcom/airbnb/lottie/j;Ln/b;Lm/e;)V

    return-object v0
.end method
