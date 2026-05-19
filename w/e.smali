.class public final synthetic Lw/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lw/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lw/e;

    invoke-direct {v0}, Lw/e;-><init>()V

    sput-object v0, Lw/e;->a:Lw/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->a()V

    return-void
.end method
