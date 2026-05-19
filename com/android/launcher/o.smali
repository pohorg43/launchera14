.class public final synthetic Lcom/android/launcher/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/o;->c:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/launcher/o;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/o;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/o;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/o;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/o;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/o;->c:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/Launcher;->V(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_11
    iget-object v0, p0, Lcom/android/launcher/o;->c:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/launcher/o;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/Launcher;->m(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
