.class public Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->initUxScreenInfoFromBuilder(Landroid/content/Context;Z)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;-><init>(Landroid/content/res/Resources;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$a;)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    goto :goto_1d

    :cond_16
    new-instance p1, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-direct {p1, v0, v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;-><init>(Landroid/content/res/Resources;Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$a;)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    :goto_1d
    return-void
.end method


# virtual methods
.method public a(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->access$302(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;I)I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->access$402(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;F)F

    return-object p0
.end method

.method public a(Landroid/graphics/Path;)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->access$502(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Landroid/graphics/Path;)Landroid/graphics/Path;

    return-object p0
.end method

.method public a(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->access$702(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Z)Z

    return-object p0
.end method

.method public a()Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    return-object p0
.end method

.method public b(I)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;
    .registers 4

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->access$102(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;I)I

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    int-to-float p1, p1

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->access$202(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;F)F

    return-object p0
.end method

.method public b(Z)Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;
    .registers 3

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig$b;->a:Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;->access$602(Lcom/oplus/uxicon/ui/ui/UxCustomAdaptiveIconConfig;Z)Z

    return-object p0
.end method
