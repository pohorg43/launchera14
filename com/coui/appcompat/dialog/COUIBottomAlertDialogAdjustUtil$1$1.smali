.class Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    iget-object p2, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a:Landroid/view/Window;

    iget-object p3, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->b:Landroid/view/View;

    iget-object p4, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->c:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->d:Landroid/graphics/Point;

    invoke-static {p2, p3, p4, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->a(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->a:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a:Landroid/view/Window;

    sget p1, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz p1, :cond_2d

    check-cast p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setOnSizeChangeListener(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;)V

    :cond_2d
    return-void
.end method
