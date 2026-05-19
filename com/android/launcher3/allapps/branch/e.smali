.class public final synthetic Lcom/android/launcher3/allapps/branch/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;I)V
    .registers 5

    iput p4, p0, Lcom/android/launcher3/allapps/branch/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/e;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iput-object p3, p0, Lcom/android/launcher3/allapps/branch/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/allapps/branch/e;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/e;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/e;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->l(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/allapps/branch/e;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/e;->c:Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/e;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;->j(Ljava/lang/String;Lcom/android/launcher3/allapps/branch/BranchUIManagerImpl;Ljava/lang/Object;Landroid/view/View;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
