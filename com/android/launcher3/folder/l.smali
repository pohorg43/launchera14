.class public final synthetic Lcom/android/launcher3/folder/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderPagedView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/l;->a:I

    packed-switch v0, :pswitch_data_2c

    goto :goto_1c

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/folder/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x0
    iget-object p0, p0, Lcom/android/launcher3/folder/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/FolderPagedView;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :goto_1c
    iget-object p0, p0, Lcom/android/launcher3/folder/l;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz8/e;

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
