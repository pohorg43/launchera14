.class public final synthetic Lcom/android/launcher/badge/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/util/PackageUserKey;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/PackageUserKey;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/badge/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/d;->b:Lcom/android/launcher3/util/PackageUserKey;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/d;->a:I

    packed-switch v0, :pswitch_data_e

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/android/launcher/badge/d;->b:Lcom/android/launcher3/util/PackageUserKey;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method
