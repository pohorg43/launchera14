.class public final synthetic Ld0/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Ld0/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ld0/c;

    invoke-direct {v0}, Ld0/c;-><init>()V

    sput-object v0, Ld0/c;->a:Ld0/c;

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

    invoke-static {}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->b()V

    return-void
.end method
