.class public Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;
.super Landroid/view/View$BaseSavedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUISavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState$1;

    invoke-direct {v0}, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState$1;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;->a:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$COUISavedState;->a:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
