.class public final synthetic Lcom/android/launcher/r0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

.field public final synthetic b:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/r0;->a:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    iput-object p2, p0, Lcom/android/launcher/r0;->b:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    iput p3, p0, Lcom/android/launcher/r0;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/r0;->a:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;

    iget-object v1, p0, Lcom/android/launcher/r0;->b:Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;

    iget p0, p0, Lcom/android/launcher/r0;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;->a(Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;ILandroid/view/View;)V

    return-void
.end method
