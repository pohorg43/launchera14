.class public Lcom/android/wm/shell/common/bubbles/BubbleInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/common/bubbles/BubbleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsImportantConversation:Z

.field private mKey:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mShortcutId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BubbleInfo$1;

    invoke-direct {v0}, Lcom/android/wm/shell/common/bubbles/BubbleInfo$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mShortcutId:Ljava/lang/String;

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIsImportantConversation:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/wm/shell/common/bubbles/BubbleInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/bubbles/BubbleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/graphics/drawable/Icon;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    iput p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    iput-object p3, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mShortcutId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput p5, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mUserId:I

    iput-object p6, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mPackageName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mTitle:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIsImportantConversation:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFlags()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortcutId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mUserId:I

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isBubbleSuppressable()Z
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isBubbleSuppressed()Z
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isImportantConversation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIsImportantConversation:Z

    return p0
.end method

.method public isNotificationSuppressed()Z
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/wm/shell/common/bubbles/BubbleInfo;->mIsImportantConversation:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
