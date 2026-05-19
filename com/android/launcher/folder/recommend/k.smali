.class public final synthetic Lcom/android/launcher/folder/recommend/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/k;->a:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/k;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher/folder/recommend/k;->c:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iput-object p4, p0, Lcom/android/launcher/folder/recommend/k;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/k;->a:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v1, p0, Lcom/android/launcher/folder/recommend/k;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher/folder/recommend/k;->c:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/k;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher/folder/recommend/RecommendSettingDialogHelper;->d(Lcom/coui/appcompat/couiswitch/COUISwitch;Landroid/view/View;Lcom/coui/appcompat/couiswitch/COUISwitch;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
