.class public final synthetic Lcom/android/launcher3/o2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/o2;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_19

    const/4 v0, 0x2

    if-eq p3, v0, :cond_11

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/o2;->c:Ljava/lang/String;

    return-void

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/o2;->c:Ljava/lang/String;

    return-void

    :cond_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/o2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/o2;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/o2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/o2;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->k0(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/o2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/o2;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace;->D(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/o2;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/o2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/o2;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/o2;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/o2;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_6  #00000002
    .end packed-switch
.end method
