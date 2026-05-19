.class public final synthetic Lcom/android/launcher3/folder/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/folder/i;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/i;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/folder/i;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/FolderNameProvider;->b(Ljava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher3/folder/i;->b:Ljava/lang/String;

    check-cast p1, Lcom/oplus/channel/server/data/Command;

    invoke-static {p0, p1}, Lcom/oplus/channel/server/ClientProxyImpl;->f(Ljava/lang/String;Lcom/oplus/channel/server/data/Command;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
