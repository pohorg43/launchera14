.class public final synthetic Lcom/android/launcher3/testing/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/testing/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/testing/a;

    invoke-direct {v0}, Lcom/android/launcher3/testing/a;-><init>()V

    sput-object v0, Lcom/android/launcher3/testing/a;->a:Lcom/android/launcher3/testing/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
