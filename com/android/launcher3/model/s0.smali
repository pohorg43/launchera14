.class public final synthetic Lcom/android/launcher3/model/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;)V
    .registers 8

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V
    .registers 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/model/s0;->a:I

    packed-switch v0, :pswitch_data_8e

    goto :goto_6c

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, [Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-static/range {v1 .. v6}, Lcom/android/quickstep/TaskViewUtils;->a([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-void

    :pswitch_28  #0x1
    iget-object v0, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/popup/PopupPopulator;->b(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-void

    :pswitch_4a  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/StackTraceElement;

    iget-object p0, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lcom/android/launcher3/model/ModelWriter$ModelVerifier;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->g(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;Landroid/content/ContentResolver;[Ljava/lang/StackTraceElement;Lcom/android/launcher3/model/ModelWriter$ModelVerifier;)V

    return-void

    :goto_6c
    iget-object v0, p0, Lcom/android/launcher3/model/s0;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/function/Supplier;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/model/s0;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/model/s0;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/view/View;

    invoke-static/range {v1 .. v6}, Lcom/android/quickstep/util/ImageActionUtils;->d(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;)V

    return-void

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_4a  #00000000
        :pswitch_28  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
