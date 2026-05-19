.class public Lcom/android/wm/shell/transition/TransitionConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ADJUST_ANIM_SYSTEM_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SKIP_CUMSTOM_ANIM_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_APP_PREFIXES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    const-string v0, "com.android.launcher"

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.incallui"

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.intelligence"

    const-string v5, "com.android.browser"

    const-string v6, "com.android.phone"

    const-string v7, "com.android.wallpaper.livepicker"

    const-string v8, "com.android.calculator2"

    const-string v9, "com.android.calendar"

    const-string v10, "com.android.contacts"

    const-string v11, "com.android.mms"

    const-string v12, "com.android.stk"

    const-string v13, "com.android.packageinstaller"

    const-string v14, "com.android.permissioncontroller"

    const-string v15, "com.finshell.wallet"

    const-string v16, "com.redteamobile.roaming"

    const-string v17, "com.android.nfc"

    const-string v18, "com.market.heydemo"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/transition/TransitionConstants;->SYSTEM_APPS:Ljava/util/Set;

    const-string v0, "com.oplus."

    const-string v1, "com.oppo."

    const-string v2, "com.heytap."

    const-string v3, "com.nearme."

    const-string v4, "com.coloros"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/transition/TransitionConstants;->SYSTEM_APP_PREFIXES:[Ljava/lang/String;

    const-string v0, "com.android.incallui"

    const-string v1, "com.oplus.ocar"

    const-string v2, "com.coloros.weather2"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/transition/TransitionConstants;->ADJUST_ANIM_SYSTEM_APPS:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/transition/TransitionConstants;->SKIP_CUMSTOM_ANIM_LIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
