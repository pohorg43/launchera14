.class public final Lcom/android/launcher3/appedit/AppEditModelLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;,
        Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;,
        Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;,
        Lcom/android/launcher3/appedit/AppEditModelLoader$ModelLoader;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppEditModelLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppEditModelLoader.kt\ncom/android/launcher3/appedit/AppEditModelLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n1#2:277\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

.field private static final MODIFIED:I = 0x1

.field private static final NOT_MODIFIED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppEditModelLoader"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/launcher3/appedit/AppEditModelLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInit:Z

.field private mLoadNormal:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

.field private mLoadSmart:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion$sInstance$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadSmart:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;

    new-instance v0, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadNormal:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditModelLoader;

    move-result-object v0

    return-object v0
.end method

.method private final updateSuffix(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;ILandroid/content/Context;I)V
    .registers 24

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "AppEditModelLoader"

    const-string v5, "AppEdit"

    if-eqz v3, :cond_22

    const-string/jumbo v3, "updateSuffix: identifier "

    const-string v6, " myIdentifier "

    invoke-static {v3, v1, v6, v2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string v3, ""

    const-string/jumbo v6, "this as java.lang.String…ing(startIndex, endIndex)"

    const/16 v7, 0x5f

    const/4 v8, 0x0

    if-ne v1, v2, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v9, v2

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_999"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_82

    :cond_5d
    const/16 v9, 0x3e7

    if-ne v1, v9, :cond_81

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_82

    :cond_81
    move-object v1, v3

    :goto_82
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_94

    const-string/jumbo v2, "updateSuffix: componentName "

    const-string v6, " suffixComponentName "

    invoke-static {v2, v0, v6, v1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e7

    sget-object v0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getCacheInfo(Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object v2

    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppEditInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a9

    move-object v3, v4

    :cond_a9
    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_b5

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v8

    :cond_b5
    if-eqz v2, :cond_c3

    if-eqz p2, :cond_be

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/appedit/AppEditInfo;->getIconStatus()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    invoke-virtual {v2, v0}, Lcom/android/launcher3/appedit/AppEditInfo;->setIconStatus(Ljava/lang/Integer;)V

    goto :goto_db

    :cond_c3
    new-instance v2, Lcom/android/launcher3/appedit/AppEditInfo;

    const/4 v10, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v12, ""

    move-object v9, v2

    move-object v11, v1

    move-object v15, v3

    invoke-direct/range {v9 .. v17}, Lcom/android/launcher3/appedit/AppEditInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->putCacheInfo(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;)V

    :goto_db
    sget-object v9, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    move-object/from16 v10, p4

    move-object v11, v1

    move-object v12, v3

    move/from16 v13, p3

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    :cond_e7
    return-void
.end method


# virtual methods
.method public final deleteTitle(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string p0, "cxt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "componentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->removeCacheInfo(Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbDeleteTitle(Landroid/content/Context;Ljava/lang/String;)I

    return-void
.end method

.method public final flatMapVerify(Landroid/content/Context;)Z
    .registers 2

    const-string p0, "cxt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbTableCount(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final getTableCount(Landroid/content/Context;)I
    .registers 2

    const-string p0, "cxt"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbTableCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final initData(Landroid/content/Context;)Lcom/android/launcher3/appedit/AppEditModelLoader;
    .registers 4

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AppEdit"

    const-string v0, "AppEditModelLoader"

    const-string v1, " count initData "

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;
    .registers 6

    const-string v0, "cxt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbTableCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_33

    const/16 v2, 0xfa

    if-gt v1, v2, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager;->getCacheInfo()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-le v0, v2, :cond_25

    goto :goto_2c

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadNormal:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderNormal;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    goto :goto_34

    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditModelLoader;->mLoadSmart:Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/appedit/AppEditModelLoader$AppEditLoaderSmart;->mapEntry(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object p0

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return-object p0
.end method

.method public final updateTitle(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 27

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    const-string v0, "cxt"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lcom/android/launcher3/appedit/AppEditModelLoader;->Companion:Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;

    invoke-virtual {v13, v9}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->getCacheInfo(Ljava/lang/String;)Lcom/android/launcher3/appedit/AppEditInfo;

    move-result-object v14

    const/4 v0, 0x0

    if-eqz v14, :cond_2d

    invoke-virtual {v14}, Lcom/android/launcher3/appedit/AppEditInfo;->getIconStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz p6, :cond_2e

    :cond_2d
    move v1, v0

    :cond_2e
    const/16 v15, 0x10

    const/4 v2, 0x1

    const/16 v8, 0x11

    if-eq v11, v15, :cond_3a

    if-eq v11, v8, :cond_3a

    move/from16 v16, v1

    goto :goto_3c

    :cond_3a
    move/from16 v16, v2

    :goto_3c
    if-eqz v14, :cond_4c

    invoke-virtual {v14}, Lcom/android/launcher3/appedit/AppEditInfo;->getTittleStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz p6, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    :cond_4c
    :goto_4c
    if-eq v11, v2, :cond_53

    if-eq v11, v8, :cond_53

    move/from16 v17, v0

    goto :goto_55

    :cond_53
    move/from16 v17, v2

    :goto_55
    if-eqz v14, :cond_6a

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/appedit/AppEditInfo;->setIconStatus(Ljava/lang/Integer;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/appedit/AppEditInfo;->setTittleStatus(Ljava/lang/Integer;)V

    invoke-virtual {v14, v10}, Lcom/android/launcher3/appedit/AppEditInfo;->setTitle(Ljava/lang/String;)V

    move v10, v8

    goto :goto_8a

    :cond_6a
    new-instance v7, Lcom/android/launcher3/appedit/AppEditInfo;

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const-string v3, ""

    move-object v0, v7

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    move-object v15, v7

    move-object/from16 v7, v18

    move v10, v8

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/appedit/AppEditInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v13, v9, v15}, Lcom/android/launcher3/appedit/AppEditModelLoader$Companion;->putCacheInfo(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;)V

    :goto_8a
    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, v16

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->dbUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/Object;

    const/16 v0, 0x10

    if-eq v11, v0, :cond_a1

    if-eq v11, v10, :cond_a1

    if-eqz p6, :cond_af

    :cond_a1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move/from16 v3, v16

    move-object/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/appedit/AppEditModelLoader;->updateSuffix(Ljava/lang/String;Lcom/android/launcher3/appedit/AppEditInfo;ILandroid/content/Context;I)V

    :cond_af
    return-void
.end method
