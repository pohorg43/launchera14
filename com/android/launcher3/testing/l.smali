.class public final synthetic Lcom/android/launcher3/testing/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/testing/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/testing/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/testing/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/testing/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/testing/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/testing/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/testing/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/testing/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/testing/l;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/testing/l;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_28

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/testing/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    iget-object v1, p0, Lcom/android/launcher3/testing/l;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/testing/l;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->a(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_17  #0x0
    iget-object v0, p0, Lcom/android/launcher3/testing/l;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/launcher3/testing/l;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/launcher3/testing/l;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/testing/TestInformationHandler;->j(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :goto_28
    iget-object v0, p0, Lcom/android/launcher3/testing/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/card/helper/StartCardActivityHelper;

    iget-object v1, p0, Lcom/android/launcher3/testing/l;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/launcher3/testing/l;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->d(Lcom/oplus/card/helper/StartCardActivityHelper;Landroid/content/Intent;Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_17  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
