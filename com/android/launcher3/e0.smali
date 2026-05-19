.class public final synthetic Lcom/android/launcher3/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Z)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/e0;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/e0;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/card/helper/StartCardActivityHelper;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/e0;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/e0;->c:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/e0;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/e0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-boolean p0, p0, Lcom/android/launcher3/e0;->c:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/Launcher;->o(Lcom/android/launcher3/Launcher;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/e0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/card/helper/StartCardActivityHelper;

    iget-boolean p0, p0, Lcom/android/launcher3/e0;->c:Z

    invoke-static {v0, p0}, Lcom/oplus/card/helper/StartCardActivityHelper;->g(Lcom/oplus/card/helper/StartCardActivityHelper;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
