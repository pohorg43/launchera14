.class public final Lpantanal/foundation/userunlock/UserUnlockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/foundation/userunlock/UserUnlockManager$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUserUnlockManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserUnlockManager.kt\npantanal/foundation/userunlock/UserUnlockManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1855#2,2:91\n*S KotlinDebug\n*F\n+ 1 UserUnlockManager.kt\npantanal/foundation/userunlock/UserUnlockManager\n*L\n50#1:91,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lpantanal/foundation/userunlock/UserUnlockManager;

.field public static final b:Lh4/f;

.field public static final c:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/foundation/userunlock/UserUnlockManager;

    invoke-direct {v0}, Lpantanal/foundation/userunlock/UserUnlockManager;-><init>()V

    sput-object v0, Lpantanal/foundation/userunlock/UserUnlockManager;->a:Lpantanal/foundation/userunlock/UserUnlockManager;

    sget-object v0, Lpantanal/foundation/userunlock/UserUnlockManager$b;->a:Lpantanal/foundation/userunlock/UserUnlockManager$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/foundation/userunlock/UserUnlockManager;->b:Lh4/f;

    new-instance v0, Lpantanal/foundation/userunlock/UserUnlockManager$userUnlockReceiver$1;

    invoke-direct {v0}, Lpantanal/foundation/userunlock/UserUnlockManager$userUnlockReceiver$1;-><init>()V

    sput-object v0, Lpantanal/foundation/userunlock/UserUnlockManager;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/foundation/userunlock/UserUnlockManager$a;",
            ">;"
        }
    .end annotation

    sget-object p0, Lpantanal/foundation/userunlock/UserUnlockManager;->b:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
