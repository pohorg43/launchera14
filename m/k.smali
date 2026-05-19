.class public Lm/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm/b;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Ll/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Ll/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Ll/a;Ll/d;Z)V
    .registers 7
    .param p4  # Ll/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ll/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/k;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lm/k;->a:Z

    iput-object p3, p0, Lm/k;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lm/k;->d:Ll/a;

    iput-object p5, p0, Lm/k;->e:Ll/d;

    iput-boolean p6, p0, Lm/k;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/j;Ln/b;)Lh/c;
    .registers 4

    new-instance v0, Lh/g;

    invoke-direct {v0, p1, p2, p0}, Lh/g;-><init>(Lcom/airbnb/lottie/j;Ln/b;Lm/k;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ShapeFill{color=, fillEnabled="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lm/k;->a:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld/b;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
