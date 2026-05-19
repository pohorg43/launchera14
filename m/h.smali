.class public Lm/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ll/b;

.field public final d:Ll/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ll/b;

.field public final f:Ll/b;

.field public final g:Ll/b;

.field public final h:Ll/b;

.field public final i:Ll/b;

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILl/b;Ll/m;Ll/b;Ll/b;Ll/b;Ll/b;Ll/b;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ll/b;",
            "Ll/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ll/b;",
            "Ll/b;",
            "Ll/b;",
            "Ll/b;",
            "Ll/b;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/h;->a:Ljava/lang/String;

    iput p2, p0, Lm/h;->b:I

    iput-object p3, p0, Lm/h;->c:Ll/b;

    iput-object p4, p0, Lm/h;->d:Ll/m;

    iput-object p5, p0, Lm/h;->e:Ll/b;

    iput-object p6, p0, Lm/h;->f:Ll/b;

    iput-object p7, p0, Lm/h;->g:Ll/b;

    iput-object p8, p0, Lm/h;->h:Ll/b;

    iput-object p9, p0, Lm/h;->i:Ll/b;

    iput-boolean p10, p0, Lm/h;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 4

    new-instance v0, Lh/n;

    invoke-direct {v0, p1, p2, p0}, Lh/n;-><init>(Lcom/airbnb/lottie/j;Ln/b;Lm/h;)V

    return-object v0
.end method
