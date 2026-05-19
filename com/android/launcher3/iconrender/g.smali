.class public final synthetic Lcom/android/launcher3/iconrender/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/iconrender/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/iconrender/g;

    invoke-direct {v0}, Lcom/android/launcher3/iconrender/g;-><init>()V

    sput-object v0, Lcom/android/launcher3/iconrender/g;->a:Lcom/android/launcher3/iconrender/g;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-interface {p1}, Lcom/android/launcher3/iconrender/IRenderer;->priority()I

    move-result p0

    return p0
.end method
