.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p0, p1, [Lcom/coui/appcompat/searchview/COUISearchViewAnimate$COUISavedState;

    return-object p0
.end method
