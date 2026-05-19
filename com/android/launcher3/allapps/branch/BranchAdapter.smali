.class public final Lcom/android/launcher3/allapps/branch/BranchAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchAdapter;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchAdapter;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchAdapter;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchAdapter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asAllAppDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchApp(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x1000000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchAppStoreHeader(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x8000000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchAutoSuggest(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x20000000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchEmptyDivider(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x40000000  # 2.0f

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchHint(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x800000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchLink(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x400000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchShortcut(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method

.method public final asBranchSuggestedApp(ILcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 4

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x10000000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object p0
.end method
