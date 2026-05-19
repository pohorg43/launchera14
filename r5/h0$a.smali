.class public final Lr5/h0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lr5/h0$a;

.field public static final b:Lr5/h0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr5/h0$a;

    invoke-direct {v0}, Lr5/h0$a;-><init>()V

    sput-object v0, Lr5/h0$a;->a:Lr5/h0$a;

    new-instance v0, Lr5/i0;

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v1, Li4/z;->a:Li4/z;

    invoke-direct {v0, v1}, Lr5/i0;-><init>(Ljava/util/Map;)V

    sput-object v0, Lr5/h0$a;->b:Lr5/h0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
