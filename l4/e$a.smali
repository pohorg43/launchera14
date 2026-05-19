.class public final Ll4/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll4/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll4/f$b<",
        "Ll4/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Ll4/e$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ll4/e$a;

    invoke-direct {v0}, Ll4/e$a;-><init>()V

    sput-object v0, Ll4/e$a;->a:Ll4/e$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
