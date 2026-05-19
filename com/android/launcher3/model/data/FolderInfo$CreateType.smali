.class public final enum Lcom/android/launcher3/model/data/FolderInfo$CreateType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/data/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/model/data/FolderInfo$CreateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/model/data/FolderInfo$CreateType;

.field public static final enum EDIT_DRAG:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

.field public static final enum MERGE_FOLDER:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

.field public static final enum NORMAL_DRAG:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

.field public static final enum SYS:Lcom/android/launcher3/model/data/FolderInfo$CreateType;


# instance fields
.field private final mType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    const-string v1, "SYS"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/model/data/FolderInfo$CreateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->SYS:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    const-string v3, "NORMAL_DRAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/launcher3/model/data/FolderInfo$CreateType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->NORMAL_DRAG:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    new-instance v3, Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    const-string v5, "EDIT_DRAG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/launcher3/model/data/FolderInfo$CreateType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->EDIT_DRAG:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    new-instance v5, Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    const-string v7, "MERGE_FOLDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/android/launcher3/model/data/FolderInfo$CreateType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->MERGE_FOLDER:Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->$VALUES:[Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo$CreateType;
    .registers 2

    const-class v0, Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/model/data/FolderInfo$CreateType;
    .registers 1

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->$VALUES:[Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    invoke-virtual {v0}, [Lcom/android/launcher3/model/data/FolderInfo$CreateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/model/data/FolderInfo$CreateType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo$CreateType;->mType:I

    return p0
.end method
