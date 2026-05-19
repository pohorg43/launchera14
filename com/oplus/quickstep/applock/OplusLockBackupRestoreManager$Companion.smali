.class public final Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;->access$getInstance$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/OplusLockBackupRestoreManager;

    return-object p0
.end method
