.class public Lm/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ll/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll/f;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ll/m;Ll/f;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ll/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ll/f;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lm/a;->b:Ll/m;

    iput-object p3, p0, Lm/a;->c:Ll/f;

    iput-boolean p4, p0, Lm/a;->d:Z

    iput-boolean p5, p0, Lm/a;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 4

    new-instance v0, Lh/f;

    invoke-direct {v0, p1, p2, p0}, Lh/f;-><init>(Lcom/airbnb/lottie/j;Ln/b;Lm/a;)V

    return-object v0
.end method
