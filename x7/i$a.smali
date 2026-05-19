.class public final Lx7/i$a;
.super Lx7/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lx7/i$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx7/i$a;

    invoke-direct {v0}, Lx7/i$a;-><init>()V

    sput-object v0, Lx7/i$a;->a:Lx7/i$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lx7/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
