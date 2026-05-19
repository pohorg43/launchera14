.class public Lm/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ll/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ll/a;

.field public final e:Ll/d;

.field public final f:Ll/b;

.field public final g:I

.field public final h:I

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll/b;Ljava/util/List;Ll/a;Ll/d;Ll/b;IIFZ)V
    .registers 11
    .param p2  # Ll/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll/b;",
            "Ljava/util/List<",
            "Ll/b;",
            ">;",
            "Ll/a;",
            "Ll/d;",
            "Ll/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "FZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lm/n;->b:Ll/b;

    iput-object p3, p0, Lm/n;->c:Ljava/util/List;

    iput-object p4, p0, Lm/n;->d:Ll/a;

    iput-object p5, p0, Lm/n;->e:Ll/d;

    iput-object p6, p0, Lm/n;->f:Ll/b;

    iput p7, p0, Lm/n;->g:I

    iput p8, p0, Lm/n;->h:I

    iput p9, p0, Lm/n;->i:F

    iput-boolean p10, p0, Lm/n;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 4

    new-instance v0, Lh/r;

    invoke-direct {v0, p1, p2, p0}, Lh/r;-><init>(Lcom/airbnb/lottie/j;Ln/b;Lm/n;)V

    return-object v0
.end method
