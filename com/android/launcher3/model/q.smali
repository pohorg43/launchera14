.class public final synthetic Lcom/android/launcher3/model/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/q;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/q;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/q;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/q;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->d(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void

    :goto_10
    iget-object p0, p0, Lcom/android/launcher3/model/q;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationTaskV2;->a(Ljava/util/HashSet;Lcom/android/launcher3/util/PackageUserKey;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
