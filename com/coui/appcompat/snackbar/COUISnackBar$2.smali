.class Lcom/coui/appcompat/snackbar/COUISnackBar$2;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/snackbar/COUISnackBar;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/coui/appcompat/snackbar/COUISnackBar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;ILandroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->c:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iput p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->a:I

    iput-object p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 11

    iget v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->a:I

    iget-object v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->c:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iget-boolean v1, v1, Lcom/coui/appcompat/snackbar/COUISnackBar;->u:Z

    if-nez v1, :cond_10

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->b:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerL:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result v0

    :cond_10
    const-string v1, "getOutline radius: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$2;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "COUISnackBar"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v7, v0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
