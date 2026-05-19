.class public final synthetic Lcom/android/launcher3/dragndrop/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Intent;Landroid/content/Intent;II)V
    .registers 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/dragndrop/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    iput p5, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iput p6, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    iput p6, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/tips/TipsController;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/dragndrop/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Lcom/android/launcher3/dragndrop/u;->a:I

    packed-switch v0, :pswitch_data_76

    goto :goto_5a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    iget v5, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iget v6, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    invoke-static/range {v1 .. v6}, Lcom/oplus/splitscreen/StackDividerService;->g(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Intent;Landroid/content/Intent;II)V

    return-void

    :pswitch_22  #0x1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v2, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    iget v6, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    invoke-static/range {v1 .. v6}, Lcom/oplus/splitscreen/StackDividerService;->f(Lcom/android/wm/shell/splitscreen/SplitScreenController;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void

    :pswitch_3e  #0x0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    iget v2, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iget v3, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/graphics/Canvas;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/graphics/Canvas;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->f(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    return-void

    :goto_5a
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/zoom/ui/tips/TipsController;

    iget v2, p0, Lcom/android/launcher3/dragndrop/u;->c:I

    iget v3, p0, Lcom/android/launcher3/dragndrop/u;->d:I

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/u;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/u;->g:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/os/Bundle;

    invoke-static/range {v1 .. v6}, Lcom/oplus/zoom/ui/tips/TipsController;->c(Lcom/oplus/zoom/ui/tips/TipsController;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_22  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
