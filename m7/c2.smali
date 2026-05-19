.class public final Lm7/c2;
.super Lr7/o;
.source ""

# interfaces
.implements Lm7/n1;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1451:1\n341#2,6:1452\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n*L\n1363#1:1452,6\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lr7/o;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lm7/c2;
    .registers 1

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-super {p0}, Lr7/q;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
