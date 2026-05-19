.class public Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/util/GroupedRecentTaskInfo$GroupType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FREEFORM:I = 0x3

.field public static final TYPE_SINGLE:I = 0x1

.field public static final TYPE_SPLIT:I = 0x2


# instance fields
.field private final mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mType:I
    .annotation build Lcom/android/wm/shell/util/GroupedRecentTaskInfo$GroupType;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;

    invoke-direct {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    sget-object v0, Lcom/android/wm/shell/util/SplitBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/SplitBounds;

    iput-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    return-void
.end method

.method private constructor <init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V
    .registers 4
    .param p1  # [Landroid/app/ActivityManager$RecentTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/util/SplitBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Lcom/android/wm/shell/util/GroupedRecentTaskInfo$GroupType;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object p2, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    iput p3, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    return-void
.end method

.method public static varargs forFreeformTasks([Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .registers 4
    .param p0  # [Landroid/app/ActivityManager$RecentTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    return-object v0
.end method

.method public static forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .registers 5
    .param p0  # Landroid/app/ActivityManager$RecentTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    return-object v0
.end method

.method public static forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .registers 7
    .param p0  # Landroid/app/ActivityManager$RecentTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroid/app/ActivityManager$RecentTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/android/wm/shell/util/SplitBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-direct {v0, v2, p2, v1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;-><init>([Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;I)V

    return-object v0
.end method

.method private getTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string p0, "id="

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " baseIntent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_20

    :cond_1d
    const-string/jumbo v0, "null"

    :goto_20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " winMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RecentTaskInfo;->getWindowingMode()I

    move-result p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSplitBounds()Lcom/android/wm/shell/util/SplitBounds;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    return-object p0
.end method

.method public getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    aget-object p0, p0, v1

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskInfoList()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .registers 1
    .annotation build Lcom/android/wm/shell/util/GroupedRecentTaskInfo$GroupType;
    .end annotation

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    if-nez v1, :cond_13

    const-string v2, "Task"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_13
    const-string v2, ", Task"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    aget-object v1, v3, v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo(Landroid/app/ActivityManager$RecentTaskInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_6

    :cond_2f
    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    if-eqz v1, :cond_3d

    const-string v1, ", SplitBounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3d
    const-string v1, ", Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_54

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4e

    goto :goto_5f

    :cond_4e
    const-string p0, "TYPE_FREEFORM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_54
    const-string p0, "TYPE_SPLIT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    :cond_5a
    const-string p0, "TYPE_SINGLE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mTasks:[Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mSplitBounds:Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget p0, p0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->mType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
